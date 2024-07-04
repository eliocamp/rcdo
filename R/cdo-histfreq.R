## This file was created automatically, do not edit by hand.
#' histfreq
#'
#' Histogram
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param bounds, FLOAT - Comma-separated list of the bin bounds (-inf and inf valid)
#'
#' @export
cdo_histfreq <- function(ifile, bounds = NULL, ofile = NULL) {
  cdo(operator = operators$histfreq,
      input = list(ifile),
      params = list(bounds = bounds),
      output = c(ofile)
  )
}
