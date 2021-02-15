+++
title = "[preprint] TEMPI: An Interposed MPI Library with a Canonical Representation of CUDA-aware Datatypes"
date = 2021-01-21T00:00:00  # Schedule page publish date.
draft = false

math = false

tags = ["stencil", "mpi"]
+++

**Carl Pearson, Kun Wu, I-Hsin Chung, Jinjun Xiong, Wen-Mei Hwu**

*arxiv preprint*

MPI derived datatypes are an abstraction that simplifies handling of non-contiguous data in MPI applications. These datatypes are recursively constructed at runtime from primitive Named Types defined in the MPI standard. More recently, the development and deployment of CUDA-aware MPI implementations has encouraged the transition of distributed high-performance MPI codes to use GPUs. Such implementations allow MPI functions to directly operate on GPU buffers, easing integration of GPU compute into MPI codes. Despite substantial attention to CUDA-aware MPI implementations, they continue to offer cripplingly poor GPU performance when manipulating derived datatypes on GPUs. This work presents a new MPI library, TEMPI, to address this issue. TEMPI first introduces a common datatype to represent equivalent MPI derived datatypes. TEMPI can be used as an interposed library on existing MPI deployments without system or application changes. Furthermore, this work presents a performance model of GPU derived datatype handling, demonstrating that previously preferred "one-shot" methods are not always fastest. Ultimately, the interposed-library model of this work demonstrates MPI_Pack speedup of up to 242,000x and MPI_Send speedup of up to 59,000x compared to the MPI implementation deployed on a leadership-class supercomputer. This yields speedup of more than 1000x in a 3D halo exchange at 192 ranks.

* [pdf](/pdf/20210121_pearson_arxiv.pdf)
* [code](https://github.com/cwpearson/tempi)
* [arxiv](https://arxiv.org/abs/2012.14363)