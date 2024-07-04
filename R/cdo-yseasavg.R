## This file was created automatically, do not edit by hand.
#' yseasavg
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_yseasavg <- function(ifile, ofile = NULL) {
  cdo(operator = operators$yseasavg,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
