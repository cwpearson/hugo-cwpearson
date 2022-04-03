+++
title = "Implementation of a Basic Integer Linear Programming Solver"
date = 2022-04-02T00:00:00
lastmod = 2022-04-02T00:00:00
draft = true

# Authors. Comma separated list, e.g. `["Bob Smith", "David Jones"]`.
authors = ["Carl Pearson"]

tags = ["python"]

summary = ""

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["deep-learning"]` references 
#   `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects = []

# Featured image
# To use, add an image named `featured.jpg/png` to your project's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = "Center"

  # Show image only in page previews?
  preview_only = true


categories = []




# Set captions for image gallery.


+++

<!-- style math  -->
<script>
    document.addEventListener("DOMContentLoaded", function() {
        renderMathInElement(document.body, {
          // customised options
          // • auto-render specific keys, e.g.:
          delimiters: [
              {left: '$$', right: '$$', display: true},
              {left: '$', right: '$', display: false},
              {left: '\\(', right: '\\)', display: false},
              {left: '\\[', right: '\\]', display: true}
          ],
          // • rendering keys, e.g.:
          throwOnError : false
        });
    });
</script>

Inline math: \\(\varphi = \dfrac{1+\sqrt5}{2}= 1.6180339887…\\)

Block math:

$$
 \varphi = 1+\frac{1} {1+\frac{1} {1+\frac{1} {1+\cdots} } }
$$

## Problem Formulation

A [linear programming problem](https://en.wikipedia.org/wiki/Linear_programming) is an optimization problem with the following form:

find \\(\mathbf{x}\\) to maximize
$$
\mathbf{c}^T\mathbf{x}
$$

subject to 

$$\begin{aligned}
A\mathbf{x} &\leq \mathbf{b} \cr
0 &\leq \mathbf{x} \cr
\end{aligned}$$

For [integer linear programming (ILP)](https://en.wikipedia.org/wiki/Integer_programming), there is one additional constrait:

$$
\mathbf{x} \in \mathbb{Z}
$$

In plain english, \\(\mathbf{x}\\) is a vector, where each entry represents a variable we want to find the optimal value for.
\\(\mathbf{c}\\) is a vector with one weight for each entry of \\(\mathbf{x}\\).
We're trying to maximize the dot product  \\(\mathbf{c}^T\mathbf{x}\\); we're just summing up each  each entry of entry of \\(\mathbf{x}\\) weighted by the corresponding entry of \\(\mathbf{c}\\).
For example, if we seek to maximize the sum of the first two entries of \\(\mathbf{x}\\), the first two entries of \\(\mathbf{c}\\) will be \\(1\\) and the rest \\(0\\).

**What about Minimizing instead of Maximizing?** 
Just maximize \\(-\mathbf{c}^T\mathbf{x}\\) instead of maximizing \\(\mathbf{c}^T\mathbf{x}\\).

**What if one of my variables needs to be negative?** 
At first glance, it appears \\(0 \leq \mathbf{x}\\) will be a problem.
However, we'll just construct \\(A\\) and \\(\mathbf{b}\\) so that all constraints are relative to \\(-\mathbf{x}_i\\) instead of \\(\mathbf{x}_i\\) for variable \\(i\\).

## Linear Program Relaxation

The way this is usually done is actually by initially ignoring the integer constraint ( \\(\mathbf{x} \in \mathbb{Z}\\) ), then going back and "fixing" your non-integer solution.
When you ignore the integer constraint, you're doing what's called ["linear programming relaxation" (LP relaxation)](https://en.wikipedia.org/wiki/Linear_programming_relaxation).

## Branch and Bound

## User-friendly Interface