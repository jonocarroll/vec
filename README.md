
<!-- README.md is generated from README.Rmd. Please edit that file -->

# vec

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of vec is to reinvent the “vector” class with new and improved
functionality.

## Installation

You can install the development version of {vec} like so:

``` r
# install.packages("remotes")
remotes::install_github("jonocarroll/vec")
```

## Examples

{vec} provides a new class extending R’s atomic vectors which enables
some new functionality.

``` r
library(vec)
```

### Subsetting via Functions

Along with some built-in vector operations such as `is_even()`, {vec}
enables subsetting with a function or formula, and in-place replacements
with the same

``` r
x <- as_vec(1:10)
x
#>  [1]  1  2  3  4  5  6  7  8  9 10

x[~is_even(.)]
#> [1]  2  4  6  8 10

x[is_even]
#> [1]  2  4  6  8 10

x[is_even] <- 0
x
#>  [1] 1 0 3 0 5 0 7 0 9 0
```

See the vignette for more details.

### Rotating

While not specific to {vec}, this package provides a ring-buffer-like
function which rotates a vector through `n` positions

``` r
x <- as_vec(1:5)
x
#> [1] 1 2 3 4 5

rotate(x, n = 1)
#> [1] 2 3 4 5 1
rotate(x, n = 2)
#> [1] 3 4 5 1 2
rotate(x, n = -1)
#> [1] 5 1 2 3 4
```

## Other Use Cases

I’m interested in what else a new vector class could bring to R. Add an
[Issue](https://github.com/jonocarroll/vec) if you can think of one!
