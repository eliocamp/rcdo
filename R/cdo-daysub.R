## This file was created automatically, do not edit by hand.
#' daysub
#'
#' Daily arithmetic
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_daysub <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$daysub,
      input = list(ifile1, ifile2),
      params = NULL,
      output = ofile
  )
}
