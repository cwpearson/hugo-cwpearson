+++
title = "A Fast and Massively-Parallel Solver for Multiple-Scattering Tomographic Image Reconstruction"
date = 2018-05-21
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Mert Hidayetoglu", "Carl Pearson", "Izzat El Hajj", "Levent Gurel", "Weng Cho Chew", "Wen-Mei Hwu"]

# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference proceedings
# 2 = Journal
# 3 = Work in progress
# 4 = Technical report
# 5 = Book
# 6 = Book chapter
publication_types = ["1"]

# Publication name and optional abbreviated version.
publication = "In *2018 IEEE International Parallel and Distributed Processing Symposium*"
publication_short = "In *IPDPS*"

# Abstract and optional shortened version.
abstract = "We present a massively-parallel solver for large Helmholtz-type inverse scattering problems. The solver employs the distorted Born iterative method for capturing the multiple-scattering phenomena in image reconstructions. This method requires many full-wave forward-scattering solutions in each iteration, constituting the main performance bottleneck with its high computational complexity. As a remedy, we use the multilevel fast multipole algorithm (MLFMA). The solver scales among computing nodes using a two-dimensional parallelization strategy that distributes illuminations in one dimension, and MLFMA sub-trees in the other dimension. Multi-core CPUs and GPUs are used to provide per-node speedup. We demonstrate a 76% efficiency when scaling from 64 GPUs to 4,096 GPUs. The paper provides reconstruction of a 204.8λ×204.8λ image (4M unknowns) executed on 4,096 GPUs in near-real time (almost 2 minutes). To the best of our knowledge, this is the largest full-wave inverse scattering solution to date, in terms of both image size and computational resources."
abstract_short = ""

# Does this page contain LaTeX math? (true/false)
math = false

# Does this page require source code highlighting? (true/false)
highlight = true

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = true

# Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter the filename (excluding '.md') of your project file in `content/project/`.
#   E.g. `projects = ["deep-learning"]` references `content/project/deep-learning.md`.
projects = []

# Links (optional)
url_pdf = "pdf/20180521_hidayetoglu_ipdps.pdf"
url_preprint = ""
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_source = ""

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""

+++
