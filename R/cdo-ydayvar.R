## This file was created automatically, do not edit by hand.
#' ydayvar
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ydayvar <- function(ifile, ofile = NULL) {
  cdo(operator = operators$ydayvar,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
