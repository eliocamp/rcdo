## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param type STRING - Type of the grid: quadratic, linear, cubic (default: type=quadratic)
#' @param trunc STRING - Triangular truncation
#'
#' @export
#' @rdname spectral
cdo_sp2gp <- function(ifile, type = NULL, trunc = NULL, ofile = NULL) {
  cdo(operator = operators$sp2gp,
      input = list(ifile),
      params = list(type = type, trunc = trunc),
      output = c(ofile)
  )
}
