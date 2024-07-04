## This file was created automatically, do not edit by hand.
#' eca_cfd
#'
#' Consecutive frost days index per time period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param N, INTEGER - Minimum number of days exceeded (default: N = 5)
#'
#' @export
cdo_eca_cfd <- function(ifile, N = NULL, ofile = NULL) {
  cdo(operator = operators$eca_cfd,
      input = list(ifile),
      params = list(N = N),
      output = c(ofile)
  )
}
