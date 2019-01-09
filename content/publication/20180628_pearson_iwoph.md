+++
title = "NUMA-Aware Data-Transfer Measurements for Power/NVLink Multi-GPU Systems"
date = 2018-06-28
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Carl Pearson", "I-Hsin Chung", "Zehra Sura", "Jinjun Xiong", "Wen-Mei Hwu"]

# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference paper
# 2 = Journal article
# 3 = Manuscript
# 4 = Report
# 5 = Book
# 6 = Book section
publication_types = ["1"]

# Publication name and optional abbreviated version.
publication = "International Workshop on OpenPower in HPC"
publication_short = "IWOPH 2018"

# Abstract and optional shortened version.
abstract = "High-performance computing increasingly relies on heterogeneous systems with specialized hardware accelerators to improve application performance. For example, NVIDIA’s CUDA programming system and general-purpose GPUs have emerged as a widespread accelerator in HPC systems. This trend has exacerbated challenges of data placement as accelerators often have fast local memories to fuel their computational demands, but slower interconnects to feed those memories. Crucially, real-world data-transfer performance is strongly influenced not just by the underlying hardware, but by the capabilities of the programming systems. Understanding how application performance is affected by the logical communication exposed through abstractions, as well as the underlying system topology, is crucial for developing high-performance applications and architectures. This report presents initial data-transfer microbenchmark results from two POWER-based systems obtained during work towards developing an automated system performance characterization tool."
abstract_short = ""

# Does this page contain LaTeX math? (true/false)
math = false

# Does this page require source code highlighting? (true/false)
highlight = false

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = true

# Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects = ["scope"]

# Links (optional)
url_pdf = "pdf/20180628-iwoph.pdf"
url_preprint = ""
url_code = ""
url_dataset = ""
url_project = ""
url_slides = "pdf/20180628-iwoph-slides.pdf"
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