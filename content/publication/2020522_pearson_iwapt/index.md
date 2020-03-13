+++
title = "(Preprint) Node-Aware Stencil Communication on Heterogeneous Supercomputers"
date = 2020-03-09T00:00:00  # Schedule page publish date.
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Carl Pearson", "Mert Hidayetoglu", "Mohammad Almasri", "Omer Anjum", "I-Hsin Chung", "Jinjun Xiong", "Wen-Mei Hwu"]

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
publication = "2020 IEEE International Workshop on Automatic Performance Tuning"
publication_short = "In *iWAPT'20*"

# Abstract and optional shortened version.
abstract = """
High-performance distributed computing systems increasingly feature nodes that have multiple CPU sockets and multiple GPUs.
The communication bandwidth between these components is non-uniform.
Furthermore, these systems can expose different communication capabilities between these components.
For communication-heavy applications, optimally using these capabilities is challenging and essential for performance. 
Bespoke codes with optimized communication may be non-portable across run-time/software/hardware configurations, and existing stencil frameworks neglect optimized communication.
This work presents node-aware approaches for automatic data placement and communication implementation for 3D stencil codes on multi-GPU nodes with non-homogeneous communication performance and capabilities.
Benchmarking results in the Summit system show that choices in placement can result in a 20% improvement in single-node exchange, and communication specialization can yield a further 6x improvement in exchange time in a single node, and a 16% improvement at 1536 GPUs."""
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
projects = ["stencil_library"]

# Links (optional)
url_pdf = "pdf/20200522_pearson_iwapt.pdf"
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
