#' Calculator Functions
#'
#' Basic arithmetic calculator operations: addition, subtraction, multiplication, and division.
#'
#' @name calculator
NULL

#' Add two numbers
#'
#' Computes the sum of two numbers.
#'
#' @param a Numeric value.
#' @param b Numeric value.
#' @return Sum of \code{a} and \code{b}.
#' @export
#' @examples
#' add(10, 5)
add <- function(a, b) {
  a + b
}

#' Subtract two numbers
#'
#' Computes the difference between two numbers.
#'
#' @param a Numeric value.
#' @param b Numeric value.
#' @return Difference of \code{a - b}.
#' @export
#' @examples
#' subtract(10, 5)
subtract <- function(a, b) {
  a - b
}

#' Multiply two numbers
#'
#' Computes the product of two numbers.
#'
#' @param a Numeric value.
#' @param b Numeric value.
#' @return Product of \code{a * b}.
#' @export
#' @examples
#' multiply(10, 5)
multiply <- function(a, b) {
  a * b
}

#' Divide two numbers
#'
#' Divides numerator \code{a} by denominator \code{b}. Throws an error if denominator is zero.
#'
#' @param a Numeric numerator.
#' @param b Numeric denominator.
#' @return Quotient of \code{a / b}.
#' @export
#' @examples
#' divide(10, 5)
divide <- function(a, b) {
  if (b == 0) {
    stop("Division by zero is not allowed")
  }
  a / b
}
