## This file was created automatically, do not edit by hand.
#' yseasvar
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_yseasvar <- function(ifile, ofile = NULL) {
  cdo(operator = operators$yseasvar,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
