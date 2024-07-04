## This file was created automatically, do not edit by hand.
#' ydrunmean
#'
#' Multi
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param nts, INTEGER - Number of timesteps
#'
#' @export
cdo_ydrunmean <- function(ifile, nts = NULL, ofile = NULL) {
  cdo(operator = operators$ydrunmean,
      input = list(ifile),
      params = list(nts = nts),
      output = c(ofile)
  )
}
