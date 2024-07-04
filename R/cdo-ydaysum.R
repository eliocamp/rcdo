## This file was created automatically, do not edit by hand.
#' ydaysum
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ydaysum <- function(ifile, ofile = NULL) {
  cdo(operator = operators$ydaysum,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
