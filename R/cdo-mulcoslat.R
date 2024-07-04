## This file was created automatically, do not edit by hand.
#' mulcoslat
#'
#' Arithmetic with latitude
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_mulcoslat <- function(ifile, ofile = NULL) {
  cdo(operator = operators$mulcoslat,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
