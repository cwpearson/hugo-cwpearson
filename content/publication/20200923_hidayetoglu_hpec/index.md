+++
title = "At-Scale Sparse Deep Neural Network Inference With Efficient GPU Implementation"
date = 2020-09-23T00:00:00  # Schedule page publish date.
draft = false

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Mert Hidayetoglu", "Carl Pearson", "Vikram Sharma Mailthody", "Eiman Ebrahimi", "Jinjun Xiong", "Rakesh Nagi", "Wen-Mei Hwu"]

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
publication = "2020 IEEE High Performance Extreme Compute Conference"
publication_short = "In *HPEC'20*"

# Abstract and optional shortened version.
abstract = """
This paper presents GPU performance optimization and scaling results for inference models of the Sparse Deep Neural Network Challenge 2020.
Demands for network quality have increased rapidly, pushing the size and thus the memory requirements of many neural networks beyond the capacity ofavailable accelerators.
Sparse deep neural networks (SpDNN) have shown promise for reining in the memory footprint of large neural networks.\
However, there is room for improvement inimplementing SpDNN operations on GPUs.
This work presents optimized sparse matrix multiplication kernels fused with theReLU function.
The optimized kernels reuse input feature mapsfrom the shared memory and sparse weights from registers.
For multi-GPU parallelism, our SpDNN implementation duplicates weights and statically partition the feature maps across GPUs.
Results for the challenge benchmarks show that the proposed kernel design and multi-GPU parallelization achieve up to 180TeraEdges per second inference throughput.
These results areup to 4.3x faster for a single GPU and an order of magnitude faster at full scale than those of the champion of the 2019 SparseDeep Neural Network Graph Challenge for the same generation of NVIDIA V100 GPUs.
Using the same implementation1, we also show single-GPU throughput on NVIDIA A100 is 2.37x fasterthan V100"""
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
url_pdf = "pdf/20200923_hidayetoglu_hpec.pdf"
url_preprint = ""
url_code = "https://github.com/merthidayetoglu/sparse-DNN"
url_dataset = ""
url_project = ""
url_slides = "pdf/20200923_hidayetoglu_hpec_slides.pdf"
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
