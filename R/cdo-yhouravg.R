## This file was created automatically, do not edit by hand.
#' yhouravg
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_yhouravg <- function(ifile, ofile = NULL) {
  cdo(operator = operators$yhouravg,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
