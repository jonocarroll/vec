#' @export
#' @method [ vec
`[.vec` <- function(x, i, ...) {
  UseMethod("[.vec", i)
}

#' @export
#' @method [.vec default
`[.vec.default` <- function(x, i, ...) {
  x <- strip_vec(x)
  x <- x[i]
  as_vec(x)
}

#' @export
#' @method [.vec function
`[.vec.function` <- function(x, i, ...) {
  x <- strip_vec(x)
  x <- x[i(x, ...)]
  as_vec(x)
}

#' @export
#' @method [.vec formula
`[.vec.formula` <- function(x, i, ...) {
  f <- rlang::as_function(i)
  x[f, ...]
}
