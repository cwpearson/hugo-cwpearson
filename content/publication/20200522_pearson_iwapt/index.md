+++
title = "[iWAPT] Node-Aware Stencil Communication on Heterogeneous Supercomputers"
date = 2020-03-09  # Schedule page publish date.
draft = false

projects = ["stencil"]

+++

**Carl Pearson, Mert Hidayetoglu, Mohammad Almasri, Omer Anjum, I-Hsin Chung, Jinjun Xiong, Wen-Mei Hwu**

In *2020 IEEE International Workshop on Automatic Performance Tuning (iWAPT)*

High-performance distributed computing systems increasingly feature nodes that have multiple CPU sockets and multiple GPUs.
The communication bandwidth between these components is non-uniform.
Furthermore, these systems can expose different communication capabilities between these components.
For communication-heavy applications, optimally using these capabilities is challenging and essential for performance. 
Bespoke codes with optimized communication may be non-portable across run-time/software/hardware configurations, and existing stencil frameworks neglect optimized communication.
This work presents node-aware approaches for automatic data placement and communication implementation for 3D stencil codes on multi-GPU nodes with non-homogeneous communication performance and capabilities.
Benchmarking results in the Summit system show that choices in placement can result in a 20% improvement in single-node exchange, and communication specialization can yield a further 6x improvement in exchange time in a single node, and a 16% improvement at 1536 GPUs.

* [pdf](pdf/20200522_pearson_iwapt.pdf)
* [code](https://github.com/cwpearson/stencil)
* [slides](pdf/20200522_pearson_iwapt_slides.pdf)