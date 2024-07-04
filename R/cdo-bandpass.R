## This file was created automatically, do not edit by hand.
#' bandpass
#'
#' Time series filtering
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param fmin, FLOAT	Minimum - frequency per year that passes the filter.
#' @param fmax, FLOAT	Maximum - frequency per year that passes the filter.
#'
#' @export
cdo_bandpass <- function(ifile, fmin = NULL, fmax = NULL, ofile = NULL) {
  cdo(operator = operators$bandpass,
      input = list(ifile),
      params = list(fmin = fmin, fmax = fmax),
      output = c(ofile)
  )
}
