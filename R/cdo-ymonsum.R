## This file was created automatically, do not edit by hand.
#' ymonsum
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ymonsum <- function(ifile, ofile = NULL) {
  cdo(operator = operators$ymonsum,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
