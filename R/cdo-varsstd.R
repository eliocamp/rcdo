## This file was created automatically, do not edit by hand.
#' varsstd
#'
#' Statistical values over all variables
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_varsstd <- function(ifile, ofile = NULL) {
  cdo(operator = operators$varsstd,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
