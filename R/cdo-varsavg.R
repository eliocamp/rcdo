## This file was created automatically, do not edit by hand.
#' varsavg
#'
#' Statistical values over all variables
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_varsavg <- function(ifile, ofile = NULL) {
  cdo(operator = operators$varsavg,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
