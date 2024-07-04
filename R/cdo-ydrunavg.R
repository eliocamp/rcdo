## This file was created automatically, do not edit by hand.
#' ydrunavg
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param nts, INTEGER - Number of timesteps
#'
#' @export
cdo_ydrunavg <- function(ifile, nts = NULL, ofile = NULL) {
  cdo(operator = operators$ydrunavg,
      input = list(ifile),
      params = list(nts = nts),
      output = c(ofile)
  )
}
