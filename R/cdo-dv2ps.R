## This file was created automatically, do not edit by hand.
#' dv2ps
#'
#' D and V to velocity potential and stream function
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_dv2ps <- function(ifile, ofile = NULL) {
  cdo(operator = operators$dv2ps,
      input = list(ifile),
      params = NULL,
      output = ofile
  )
}
