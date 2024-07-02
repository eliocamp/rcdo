## This file was created automatically, do not edit by hand.
#' fourier
#'
#' Fourier transformation
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param epsilon, INTEGER - -1: forward transformation; 1: backward transformation
#'
#' @export
cdo_fourier <- function(ifile, epsilon = NULL, ofile = NULL) {
  cdo(operator = operators$fourier,
      input = list(ifile),
      params = list(epsilon = epsilon),
      output = ofile
  )
}
