+++
draft = false

date = "2017-03-28"
title = "Large Inverse-Scattering Solutions with DBIM on GPU-Enabled Supercomputers"
authors = ["Mert Hidayetoglu", "Carl Pearson", "Weng Cho Chew", "Levent Gurel", "Wen-mei Hwu"]

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

abstract = 'We report inverse-scattering solutions on supercomputers involving large numbers of graphics processing units (GPUs). The distorted-Born iterative method (DBIM) is employed for the iterative inversions. In each iteration, the required forward problems are distributed among computing nodes equipped with GPUs, and solved with the multilevel fast multipole algorithm. A tomographic reconstruction of a synthetic object with a linear dimension of one hundred wavelengths is obtained on 256 GPUs. The results show that DBIM obtains images approximately four times faster on GPUs, compared to parallel executions on traditional CPU-only computing nodes.'

math = false
publication = "In *Applied and Computational Electromagnetics Symposium, 2017.* For the special session: Big Data Aspects"

url_code = ""
url_dataset = ""
url_pdf = "pdf/2017aces-dbim.pdf"
url_project = ""
url_slides = ""
url_video = ""

selected = false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++