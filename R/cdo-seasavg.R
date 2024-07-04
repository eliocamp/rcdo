## This file was created automatically, do not edit by hand.
#' seasavg
#'
#' Seasonal statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_seasavg <- function(ifile, ofile = NULL) {
  cdo(operator = operators$seasavg,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
