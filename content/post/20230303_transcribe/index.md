+++
title = "Transcribing Videos with OpenAI's Whisper and ChatGPT (and yt-dlp and ffmpeg and pydub and imagehash and pandoc)"
date = 2023-03-03T00:00:00
lastmod = 2023-03-03T00:00:00
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Carl Pearson"]

tags = []

summary = ""

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects = []

# Featured image
# To use, add an image named `featured.jpg/png` to your project's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = "Center"

  # Show image only in page previews?
  preview_only = false


categories = []

# Set captions for image gallery.


+++

At $0.006/min and $0.0002/1k tokens, OpenAI's Whisper and ChatGPT APIs are cheap enough to play with.
Let's do some back-of-the-envelope calculations about a hypothetical transcription system.
It has two pieces - OpenAI's Whisper for the speech-to-text, and then OpenAI's ChatGPT to clean up any transcription errors and break the text into paragraphs.

First, some back of the envelope calculations.
A fast english speaker reaches around 160 words per minute.
OpenAI says each word is about 0.75 tokens for standard english, meaning our hypothetical fast, non-stop speaker is generating 120 tokens per minute, or 7200 per hour.
If we had to pass those through ChatGPT, (one token out for each token in), we would get the following costs:

| API     | Cost               | Cost for 1 hour of speech |
|---------|--------------------|---------------------------|
| Whisper | $0.006 / min       | 36 cents                  |
| ChatGPT | $0.002 / 1k tokens | 2.88 cents                | 


ChatGPT is basically free - Whisper is 30x as expensive -- but the whole thing still comes out to less than $0.50 to transcribe an hour of speech.

## High-Level Design

Youtube -> file.webm -> Whisper -> file-1.txt...file-N.txt -> ChatGPT -> clean-1.txt...clean-N.txt -> transcript

![](arch.png)

The high level design is

1. Use [yt-dlp] to download a talk from Youtube.
2. Use [ffmpeg] to extract the audio from the video
3. Use [pydub] to detect non-silent regions of audio
4. Use [OpenAI's Whisper] to transcribe the audio
5. Use [OpenAI's ChatGPT] to clean up the text
6. Use [ffmpeg] again to extract frames from the talk
6. Use [Pandoc] to stitch the text and frames together into a summary document

## Acquiring the Source Video and Audio

If you don't already have access to a talk, consider something like [yt-dlp], which will allow you to download video from most websites, including Youtube.
Then, I use [ffmpeg] to exctact the audio track from the video.
This audio track will be provided to OpenAI's Whipser API.

## First Expected Problem: ChatGPT's Context Size

The most pressing limit is ChatGPT's limit context: around 4k tokens.
For our purposes, we expect to generate slightly more than one output token for each input token, since ChatGPT will be asked to reproduce the input text with added paragraph breaks.
This means our input is limited to around 2000 tokens per API call.
At 120 tokens per minute, we'd expect to reach that limit after 15 minutes.
In practice, ChatGPT has a hard time reproducing text that is 2000 tokens, so I use a 5-monite window instead of fifteen minutes.

## Second Expected Problem: Transcribing partial words

If we're not smart about where we split audio, we might end up cutting a word in half, which will limit the accuracy off the Whisper API transcription on those words.
We'd rather make shorter chunks that are split when there is silence in the video.
From a monetary cost perspective, it actually doesn't matter how short the chunks are -- OpenAI is billing us for each second of audio and for each word processed by ChatGPT.
Regardless of how short the chunks are, the total audio length and words processed by ChatGPT are the same.

## Splitting Audio

To (attempt to) avoid splitting words, I use [pydub] to detect silence.
I arbitrarily pick a silence threshold, and relax that threshold until no noisy region is longer than our 5-minute chunk.
That means there is (hopefully) some safe place to split the text at least every five minutes.

This leaves many very short audio segments.
OpenAI says Whisper does better with as much context as possible, so I greedily recombine smaller audio chunks into segments no longer than five minutes.
Combine them largest-to-smallest, which allows the smallest ones a best chance to be squeezed in beside their larger neighbors.
These recombined chunks may have some silent regions within them - that's fine.
The only downside is you pay OpenAI to transcribe nothing out of these silent regions.

## Generating Text

Each five-minute audio file is provided to OpenAI's Whisper API.
The resulting text is unformatted, with no metadata, but does have punctuation.
I then pass it to ChatGPT with the following prompt:

> System:
> You split text into paragraphs and correct transcription errors

> User:
> Split the following text into paragraphs WITHOUT adding or removing anything:\n{text}

ChatGPT is quite good at splitting this unformatted text into paragraphs.
I also considered the breaks between the five-minute chunks to be paragraph breaks, which works fine in practice since there was a silent pause there anyway.

## Generating Screenshots

The final ingredient needed is a screencapture of the video to go along with each paragraph.
I know what timestamp is associated with each five-minute chunk, and I can look up where among the five-minute chunks each paragraph came from.
The source chunk and location within the chunk gives a very accurate timestamp for each paragraph of text.
I use [ffmpeg] to extract a frame from the video for each paragraph.

## The Final Summary

A markdown document is generated by inserting each paragraph in turn.
A screenshot is inserted as well, *unless* it is too similar to the last inserted screenshot.
This happens when the speaker lingers on a slide for a while, generating a lot of text without changing the video much.
Finally, I use [pandoc] to convert that markdown file into a PDF.