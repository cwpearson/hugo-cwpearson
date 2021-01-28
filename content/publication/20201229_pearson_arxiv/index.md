+++
title = "[preprint] Fast CUDA-Aware MPI Datatypes without Platform Support (preprint)"
date = 2020-01-03T00:00:00  # Schedule page publish date.
draft = false


# Does this page contain LaTeX math? (true/false)
math = false

tags = ["stencil, mpi"]
+++

**Carl Pearson, Kun Wu, I-Hsin Chung, Jinjun Xiong, Wen-Mei Hwu**

*arxiv preprint*

MPI Derived Datatypes are an abstraction that simplifies handling of non-contiguous data in MPI applications. These datatypes are recursively constructed at runtime from primitive Named Types defined in the MPI standard. More recently, the development and deployment of CUDA-aware MPI implementations has encouraged the transition of distributed high-performance MPI codes to use GPUs. These implementations allow MPI functions to directly operate on GPU buffers, easing integration of GPU compute into MPI codes. Despite substantial attention to CUDA-aware MPI implementations, they continue to offer cripplingly poor GPU performance when manipulating derived datatypes on GPUs. This work presents an approach to integrating fast derived datatype handling into existing MPI deployments through an interposed library. This library can be used regardless of MPI deployment and without modifying application code. Furthermore, this work presents a performance model of GPU derived datatype handling, demonstrating that "one-shot" methods are not always fastest. Ultimately, the interposed-library model of this work demonstrates MPI_Pack speedup of up to 724,000 and MPI_Send speedup of up to 59,000x compared to the MPI implementation deployed on a leadership-class supercomputer. This yields speedup of more than 20,000x in a 3D halo exchange. 

* [pdf](/pdf/20201229_pearson_arxiv.pdf)
* [code](https://github.com/cwpearson/tempi)