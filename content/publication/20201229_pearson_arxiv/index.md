+++
title = "Fast CUDA-Aware MPI Datatypes without Platform Support (preprint)"
date = 2020-01-03T00:00:00  # Schedule page publish date.
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Carl Pearson", "Kun Wu", "I-Hsin Chung", "Jinjun Xiong", "Wen-Mei Hwu"]

# Publication type.
# Legend:
# 0 = Uncategorized
# 1 = Conference paper
# 2 = Journal article
# 3 = Manuscript
# 4 = Report
# 5 = Book
# 6 = Book section
publication_types = ["2"]

# Publication name and optional abbreviated version.
publication = "Arxiv Preprint"
publication_short = "arxiv preprint"

# Abstract and optional shortened version.
abstract = """
MPI Derived Datatypes are an abstraction that simplifies handling of non-contiguous data in MPI applications. These datatypes are recursively constructed at runtime from primitive Named Types defined in the MPI standard. More recently, the development and deployment of CUDA-aware MPI implementations has encouraged the transition of distributed high-performance MPI codes to use GPUs. These implementations allow MPI functions to directly operate on GPU buffers, easing integration of GPU compute into MPI codes. Despite substantial attention to CUDA-aware MPI implementations, they continue to offer cripplingly poor GPU performance when manipulating derived datatypes on GPUs. This work presents an approach to integrating fast derived datatype handling into existing MPI deployments through an interposed library. This library can be used regardless of MPI deployment and without modifying application code. Furthermore, this work presents a performance model of GPU derived datatype handling, demonstrating that "one-shot" methods are not always fastest. Ultimately, the interposed-library model of this work demonstrates MPI_Pack speedup of up to 724,000 and MPI_Send speedup of up to 59,000x compared to the MPI implementation deployed on a leadership-class supercomputer. This yields speedup of more than 20,000x in a 3D halo exchange. """
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
projects = [""]

# Links (optional)
url_pdf = ""
url_preprint = "pdf/20201229_pearson_arxiv.pdf"
url_code = "https://github.com/cwpearson/tempi"
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
