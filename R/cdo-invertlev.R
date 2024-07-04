## This file was created automatically, do not edit by hand.
#' invertlev
#'
#' Invert levels
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_invertlev <- function(ifile, ofile = NULL) {
  cdo(operator = operators$invertlev,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
