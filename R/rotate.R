#' Rotate an Object in a Cycle
#'
#' Shift the elements of a an object to the left, cycling elements to the
#' end of the object as they are removed from the start. Negative values
#' shift to the right.
#'
#' @param x object to be rotated.
#' @param n number of positions to rotate (left); negative to rotate right.
#' @param ... passed to methods.
#'
#' @return a new object with elements shifted left by `n` positions
#' @export
#'
#' @examples
#' rotate(LETTERS[1:5])
#' rotate(LETTERS[1:5], 2)
#' rotate(LETTERS[1:5], -1)
rotate <- function(x, n, ...) {
  UseMethod("rotate")
}

#' @export
rotate.default <- function(x, n = 1, ...) {
  stopifnot(
    "x should be a vector" = is.vector(x),
    "n should be a number" = is.numeric(n)
  )
  v <- (((n - 1 + seq_along(x)) %% length(x))) + 1
  x[v]
}

#' @export
rotate.vec <- function(x, n = 1, ...) {
  as_vec(rotate.default(strip_vec(x), n, ...))
}
