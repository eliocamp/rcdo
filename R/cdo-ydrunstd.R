## This file was created automatically, do not edit by hand.
#' ydrunstd
#'
#' Multi
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nts, INTEGER - Number of timesteps
#'
#' @export
cdo_ydrunstd <- function(ifile, nts = NULL, ofile = NULL) {
  cdo(operator = operators$ydrunstd,
      input = list(ifile),
      params = list(nts = nts),
      output = ofile
  )
}
