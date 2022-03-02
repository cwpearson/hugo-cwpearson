+++
title = "My Favorite g++ Flags for a New Project"
date = 2022-03-02T00:00:00
lastmod = 2022-03-02T00:00:00
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Carl Pearson"]

tags = ["C++"]

summary = "C++ is hard; make it a bit easier."

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
  preview_only = true


categories = []

# Set captions for image gallery.


+++

The summaries are taken from https://gcc.gnu.org/onlinedocs/gcc/Warning-Options.html

* `-Wall`: turns on many warnings, but not "all."
* `-Wextra`: turns on even more warnings, but still not all.
* `-Wcast-align`: warn whenever a pointer is cast such that the required alignment is increased (`char*` -> `int*`).
* `-Wcast-qual`: warn when qualifier (`cosnst`) is cast away, or introduces a qualifier in an unsafe way.
* `-Wdisabled-optimization`: warn if a requested optimization pass is disable.
* `-Wduplicated-branches`: warn if if-else branches have identical bodies
* `-Wduplicated-cond`: warn about duplicated conditions in an if-else-if chain
* `-Wformat=2`: same as `-Wformat` `-Wformat-nonliteral` `-Wformat-security` `-Wformat-y2k`. make sure printf-style function arguments match their format strings.
* `-Wlogical-op`: warn about suspicious use of logical operators, i.e. contexts where bitwise is more likely.
* `-Wmissing-include-dirs`: warn if a user-supplied include dir does not exist.
* `-Wnull-dereference`: warn if paths that dereference a null pointer are detected
* `-Woverloaded-virtual`: warn when a function declaration hides virtual functions from a base class
* `-Wpointer-arith`: warn about `sizeof` for function types or `void`
* `-Wshadow`: warn about variable shadowing and global function shadowing
* `-Wswitch-enum`: warn when a `switch` on an enum type is missing one of the enums
* `-Wvla`: warn about using variable-length arrays

Also, in debug mode:

* `-fasynchronous-unwind-tables`: allows stack unwinding from asycnrhonous events (https://gcc.gnu.org/onlinedocs/gcc/Code-Gen-Options.html)

## Honorable Mentions

* `-fno-omit-frame-pointer`: g++ only turns on `-fomit-frame-pointer` on machines where it does not interfere with debugging, so no need for this one.
* `-Wuseless-cast`: Warns when casting to the same type. Unfortunately, doesn't work well with MPI, since MPI_COMM_WORLD may be an int and casting it to MPI_Comm is a "useless cast"
