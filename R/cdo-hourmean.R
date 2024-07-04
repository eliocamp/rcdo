## This file was created automatically, do not edit by hand.
#' hourmean
#'
#' Hourly statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_hourmean <- function(ifile, ofile = NULL) {
  cdo(operator = operators$hourmean,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
