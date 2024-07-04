## This file was created automatically, do not edit by hand.
#' ymonmax
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ymonmax <- function(ifile, ofile = NULL) {
  cdo(operator = operators$ymonmax,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
