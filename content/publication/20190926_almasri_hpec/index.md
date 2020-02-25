+++
title = "Update on k-truss Decomposition on GPU"
date = 2019-08-22T00:00:00  # Schedule page publish date.
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Mohammad Almasri", "Omer Anjum", "Carl Pearson", "Vikram S. Mailthody", "Zaid Qureshi", "Rakesh Nagi", "Jinjun Xiong", "Wen-Mei Hwu"]

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
In this paper, we present an update to our previous submission on k-truss decomposition from Graph Challenge 2018. 
For single GPU k-truss implementation, we propose multiple algorithmic optimizations that significantly improve performance by up to 35.2x (6.9x on average) compared to our previous GPU implementation. In addition, we present a scalable multi-GPU implementation in which each GPU handles a different 'k' value.
Compared to our prior multi-GPU implementation,the proposed approach is faster by up to 151.3x (78.8x on average). In case when the edges with only maximal k-truss are sought, incrementing the 'k' value in each iteration is inefficient particularly for graphs with large maximum k-truss.
Thus, we propose binary search for the 'k' value to find the maximal k-truss. The binary search approach on a single GPU is up to 101.5 (24.3x on average) faster than our 2018 $k$-truss submission. 
Lastly, we  show that the proposed binary search finds the maximum k-truss for "Twitter" graph dataset having 2.8 billion bidirectional edges in just 16 minutes on a single V100 GPU.
"""
abstract_short = ""


# Does this page contain LaTeX math? (true/false)
math = false

# Does this page require source code highlighting? (true/false)
highlight = false

# Featured image thumbnail (optional)
image_preview = ""

# Is this a selected publication? (true/false)
selected = false

# Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects = []

# Links (optional)
url_pdf = "pdf/2019_almasri_hpec.pdf"
url_preprint = ""
url_code = ""
url_dataset = ""
url_project = ""
url_slides = "pdf/2019_almasri_hpec_slides.pdf"
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
