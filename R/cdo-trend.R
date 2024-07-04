## This file was created automatically, do not edit by hand.
#' trend
#'
#' Trend of time series
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param equal, BOOL - Set to false for unequal distributed timesteps (default: true)
#'
#' @export
cdo_trend <- function(ifile, equal = NULL, ofile1 = NULL, ofile2 = NULL) {
  cdo(operator = operators$trend,
      input = list(ifile),
      params = list(equal = equal),
      output = c(ofile1,ofile2)
  )
}
