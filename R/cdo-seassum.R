## This file was created automatically, do not edit by hand.
#' seassum
#'
#' Seasonal statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_seassum <- function(ifile, ofile = NULL) {
  cdo(operator = operators$seassum,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
