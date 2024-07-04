## This file was created automatically, do not edit by hand.
#' hoursum
#'
#' Hourly statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_hoursum <- function(ifile, ofile = NULL) {
  cdo(operator = operators$hoursum,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
