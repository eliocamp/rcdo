## This file was created automatically, do not edit by hand.
#' deltat
#'
#' Difference between timesteps
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_deltat <- function(ifile, ofile = NULL) {
  cdo(operator = operators$deltat,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
