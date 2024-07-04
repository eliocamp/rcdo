## This file was created automatically, do not edit by hand.
#' gp2sp
#'
#' Spectral transformation
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param type, STRING - Type of the grid: quadratic, linear, cubic (default: type=quadratic)
#' @param trunc, STRING - Triangular truncation
#'
#' @export
cdo_gp2sp <- function(ifile, type = NULL, trunc = NULL, ofile = NULL) {
  cdo(operator = operators$gp2sp,
      input = list(ifile),
      params = list(type = type, trunc = trunc),
      output = c(ofile)
  )
}
