## This file was created automatically, do not edit by hand.
#' lowpass
#'
#' Time series filtering
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param fmin, FLOAT	Minimum - frequency per year that passes the filter.
#' @param fmax, FLOAT	Maximum - frequency per year that passes the filter.
#'
#' @export
cdo_lowpass <- function(ifile, fmin = NULL, fmax = NULL, ofile = NULL) {
  cdo(operator = operators$lowpass,
      input = list(ifile),
      params = list(fmin = fmin, fmax = fmax),
      output = c(ofile)
  )
}
