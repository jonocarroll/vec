#' @export
#' @method [<- vec
`[<-.vec` <- function(x, i, value, ...) {
  UseMethod("[<-.vec", i)
}

#' @export
#' @method [<-.vec default
`[<-.vec.default` <- function(x, i, value, ...) {
  x <- strip_vec(x)
  x[i] <- value
  as_vec(x)
}

#' @export
#' @method [<-.vec function
`[<-.vec.function` <- function(x, i, value, ...) {
  x <- strip_vec(x)
  x[i(x, ...)] <- value
  as_vec(x)
}

#' @export
#' @method [<-.vec formula
`[<-.vec.formula` <- function(x, i, value, ...) {
  f <- rlang::as_function(i)
  x[f, ...]
}
