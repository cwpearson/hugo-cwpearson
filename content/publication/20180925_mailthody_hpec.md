+++
title = "Collaborative (CPU+ GPU) Algorithms for Triangle Counting and Truss Decomposition"
date = 2018-09-25
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Vikram S. Mailthody", "Ketan Date", "Zaid Qureshi", "Carl Pearson", "Rakesh Nagi", "Jinjun Xiong", "Wen-Mei Hwu"]

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
publication = "In *2018 IEEE High Performance extreme Computing Conference*"
publication_short = "In *HPEC*"

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
projects = ["graph_library"]

# Links (optional)
url_pdf = "pdf/20180925_mailthody_iwoph.pdf"
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

In this paper, we present an update to our previous submission  from  Graph  Challenge  2017.  This  work  describes and evaluates new software algorithm optimizations undertaken for our 2018 year submission on Collaborative CPU+GPU Algorithms for Triangle Counting and Truss Decomposition. First, we describe four major optimizations for the triangle counting which improved performance by up to 117x over our prior submission. Additionally,  we  show  that  our triangle-counting  algorithm  is on average 151.7x faster than NVIDIA’s NVGraph library (max 476x)  for  SNAP  datasets.  Second,  we  propose  a  novel  parallel k-truss  decomposition  algorithm  that  is  time-efficient  and  is  up to 13.9x faster than our previous submission. Third, we evaluate the  effect  of  generational  hardware  improvements  between  the IBM  “Minsky”  (POWER8,  P100,  NVLink  1.0)  and  “Newell” (POWER9,  V100,  NVLink  2.0)  platforms.  Lastly,  the  software optimizations presented in this work and the hardware improvements  in  the  Newell  platform  enable  analytics  and  discovery  on large graphs  with millions of nodes  and billions of edges  in less than a minute. In sum, the new algorithmic implementations are significantly  faster  and  can  handle  much  larger  “big”  graphs.