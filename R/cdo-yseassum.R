## This file was created automatically, do not edit by hand.
#' yseassum
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_yseassum <- function(ifile, ofile = NULL) {
  cdo(operator = operators$yseassum,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
