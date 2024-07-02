## This file was created automatically, do not edit by hand.
#' timavg
#'
#' Statistical values over all timesteps
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_timavg <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timavg,
      input = list(ifile),
      params = NULL,
      output = ofile
  )
}
