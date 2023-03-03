+++
title = "Transcribing Videos with OpenAI's Whisper and ChatGPT APIs"
date = 2023-03-03T00:00:00
lastmod = 2023-03-03T00:00:00
draft = true

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

## Design Considerations



The most pressing limit is ChatGPT's limit context: around $4k tokens.
For our purposes, we expect to generate slightly more than one output token for each input token, since ChatGPT will be asked to reproduce the input text with added paragraph breaks.
This means our input is limited to around 2000 tokens per API call.
At 120 tokens per minute, we'd expect to reach that limit after 15 minutes.
This means we need to split the input audio into chunks no longer than 15 minutes each.



If we're not smart about that splitting, we might end up cutting a word in half, which will limit the accuracy off the Whisper API transcription on those words.
We'd rather make shorter chunks that are split when there is silence in the video.
From a monetary cost perspective, it actually doesn't matter how short the chunks are -- OpenAI is billing us for each second of audio and for each word processed by ChatGPT.
Regardless of how short the chunks are, the total audio length and words processed by ChatGPT are the same.

