#' Summary Statistics Functions
#'
#' Functions to calculate sample mean, variance, and standard deviation.
#'
#' @name stats_package
NULL

#' Calculate Mean Value
#'
#' Computes the arithmetic mean of a numeric vector.
#'
#' @param x A numeric vector.
#' @return The arithmetic mean of \code{x}.
#' @export
#' @examples
#' data <- c(10, 20, 30, 40, 50)
#' mean_value(data)
mean_value <- function(x) {
  sum(x) / length(x)
}

#' Calculate Sample Variance
#'
#' Computes the sample variance of a numeric vector using (n - 1) degrees of freedom.
#'
#' @param x A numeric vector with at least 2 elements.
#' @return The sample variance of \code{x}.
#' @export
#' @examples
#' data <- c(10, 20, 30, 40, 50)
#' variance(data)
variance <- function(x) {
  if (length(x) <= 1) {
    stop("Variance requires at least two data points.")
  }
  sum((x - mean(x))^2) / (length(x) - 1)
}

#' Calculate Sample Standard Deviation
#'
#' Computes the standard deviation of a numeric vector.
#'
#' @param x A numeric vector with at least 2 elements.
#' @return The sample standard deviation of \code{x}.
#' @export
#' @examples
#' data <- c(10, 20, 30, 40, 50)
#' std_dev(data)
std_dev <- function(x) {
  sqrt(variance(x))
}
