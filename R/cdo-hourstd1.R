## This file was created automatically, do not edit by hand.
#' hourstd1
#'
#' Hourly statistics
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_hourstd1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$hourstd1,
      input = list(ifile),
      params = NULL,
      output = ofile
  )
}
