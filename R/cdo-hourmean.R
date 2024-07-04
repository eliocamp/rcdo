## This file was created automatically, do not edit by hand.
#' hourmean
#'
#' Hourly statistics
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_hourmean <- function(ifile, ofile = NULL) {
  cdo(operator = operators$hourmean,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
