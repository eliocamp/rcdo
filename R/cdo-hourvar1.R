## This file was created automatically, do not edit by hand.
#' hourvar1
#'
#' Hourly statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_hourvar1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$hourvar1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
