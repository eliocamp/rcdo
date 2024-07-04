## This file was created automatically, do not edit by hand.
#' ymonstd
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ymonstd <- function(ifile, ofile = NULL) {
  cdo(operator = operators$ymonstd,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
