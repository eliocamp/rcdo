## This file was created automatically, do not edit by hand.
#' hourvar
#'
#' Hourly statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_hourvar <- function(ifile, ofile = NULL) {
  cdo(operator = operators$hourvar,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
