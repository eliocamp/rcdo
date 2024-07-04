## This file was created automatically, do not edit by hand.
#' histsum
#'
#' Histogram
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param bounds, FLOAT - Comma-separated list of the bin bounds (-inf and inf valid)
#'
#' @export
cdo_histsum <- function(ifile, bounds = NULL, ofile = NULL) {
  cdo(operator = operators$histsum,
      input = list(ifile),
      params = list(bounds = bounds),
      output = c(ofile)
  )
}
