+++
draft = false

date = "2017-06-21"
title = "Scalable Parallel DBIM Solutions of Inverse-Scattering Problems"
authors = ["Mert Hidayetoglu", "Carl Pearson",  "Levent Gurel", "Wen-mei Hwu", "Weng Cho Chew"]

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


abstract = 'We report scalable solutions of inverse-scattering problems with the distorted Born iterative method (DBIM) on large number of computing nodes. Distributing forward solutions does not scale well when the number of illuminations is not greater than the number of computing nodes. As a remedy, we distribute both forward solutions and the corresponding forward solvers to improve granularity of DBIM solutions. This paper provides a set of solutions demonstrating good scaling of the proposed parallelization strategy up to 1,024 computing nodes, employing 16,394 processing cores in total.'


math = false
publication = "Computing and Electromagnetics International Workshop (CEM), 2017"

url_code = ""
url_dataset = ""
url_pdf = "pdf/20170621_hidayetoglu_cem.pdf"
url_project = ""
url_slides = ""
url_video = ""

selected = false

# Projects (optional).
#   Associate this publication with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects = ["app_studies"]

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++