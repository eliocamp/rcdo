## This file was created automatically, do not edit by hand.
#' timvar
#'
#' Statistical values over all timesteps
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_timvar <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timvar,
      input = list(ifile),
      params = NULL,
      output = ofile
  )
}
