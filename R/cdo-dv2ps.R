## This file was created automatically, do not edit by hand.
#' dv2ps
#'
#' D and V to velocity potential and stream function
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_dv2ps <- function(ifile, ofile = NULL) {
  cdo(operator = operators$dv2ps,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
