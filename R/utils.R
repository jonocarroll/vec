#' @export
is_divisible_by <- function(a, n) {
  a %% n == 0
}

#' @export
is_even <- function(a) {
  is_divisible_by(a, 2)
}

#' @export
is_odd <- function(a) {
  !is_even(a)
}
