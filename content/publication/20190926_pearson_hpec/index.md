+++
title = "Upate on Triangle Counting on GPU"
date = 2019-08-22T00:00:00  # Schedule page publish date.
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Carl Pearson", "Mohammad Almasri", "Omer Anjum", "Vikram S. Mailthody", "Zaid Qureshi", "Rakesh Nagi", "Jinjun Xiong", "Wen-Mei Hwu"]

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
publication = "2019 IEEE High Performance Extreme Computing Conference"
publication_short = "In *HPEC'19*"

# Abstract and optional shortened version.
abstract = """
This work presents an update to the triangle-counting portion of the subgraph isomorphism static graph challenge.  This  work  is  motivated  by  a  desire  to  understand the  impact  of  CUDA  unified  memory on the triangle-counting problem. First, CUDA unified memory is used to overlap reading large graph data from disk with graph data structures in GPU memory. Second, we use CUDA unified memory hintsto solve multi-GPU performance scaling challenges present in our last submission. Finally, we improve the single-GPU kernel performance from our past submission by introducing a work-stealing dynamic algorithm GPU kernel with persistent threads, which makes performance adaptive for large graphs withoutrequiring a graph analysis phase.
"""
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
projects = []

# Links (optional)
url_pdf = "pdf/2019_pearson_hpec.pdf"
url_preprint = ""
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = "pdf/2019_pearson_hpec_poster.pdf"
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
