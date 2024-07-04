## This file was created automatically, do not edit by hand.
#' divcoslat
#'
#' Arithmetic with latitude
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_divcoslat <- function(ifile, ofile = NULL) {
  cdo(operator = operators$divcoslat,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
