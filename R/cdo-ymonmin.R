## This file was created automatically, do not edit by hand.
#' ymonmin
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ymonmin <- function(ifile, ofile = NULL) {
  cdo(operator = operators$ymonmin,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
