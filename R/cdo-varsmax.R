## This file was created automatically, do not edit by hand.
#' varsmax
#'
#' Statistical values over all variables
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_varsmax <- function(ifile, ofile = NULL) {
  cdo(operator = operators$varsmax,
      input = list(ifile),
      params = NULL,
      output = ofile
  )
}
