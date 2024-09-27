#' @export
is_vec <- function(x) {
  inherits(x, "vec")
}

#' @keywords internal
is_vec_like <- function(x) {
  is_vec(x) | is.vector(x)
}

#' @export
as_vec <- function(x) {
  class(x) <- c("vec", class(x))
  x
}

#' @keywords internal
strip_vec <- function(x) {
  class(x) <- setdiff(class(x), "vec")
  x
}

#' @export
format.vec <- function(x, ...) {
  format(strip_vec(x))
}

#' @export
print.vec <- function(x, ...) {
  print(strip_vec(x))
}
