+++
title = "Undergraduate Research Opportunities"
date = 2017-09-27T08:41:21-05:00
draft = false

# Tags and categories
# For example, use `tags = []` for no tags, or the form `tags = ["A Tag", "Another Tag"]` for one or more tags.
tags = []
categories = []

# Featured image
# Place your image in the `static/img/` folder and reference its filename below, e.g. `image = "example.jpg"`.
[header]
image = ""
caption = ""

+++

I'm looking for a few good undergraduate students! Please contact me if you're interested in any of the tasks on this page.
More significant engagement with masters or doctoral students on any of these topics is also welcome.

*(Last updated Feb 25/ 2018)*

### System Characterization

I have written an automatic system characterization performance tool that needs some more love. Some software-engineering opportunities

* Generating [rust](https://www.rust-lang.org) bindings for useful libraries (CUDA, hwloc)
* Moving parts of the application over to rust
* Changing the tool better handle the existence of only some of the libraries it uses.

Some more researchy tasks:

* Adding persistent storage discovery and performance characterization 
* Adding network storage discovery and performation characterization (MPI, RPC, and so on)
* Adding communication collective performation characterization (MPI / NCCL)

## Application Characterization

I have written a heterogeneous application profiling tool

* Trace application disk I/O
* Extending the tool to work with networked applications
    * Trace application network requests (MPI or otherwise)
    * Visualization of parallel traces
* Techniques for replaying application profiles / rescheduling computation and communication

## Automatic Architecture Determination

Researchy tasks:

* Performance estimation for GPU kernels
* Architecture generation as a constrained optimization problem
