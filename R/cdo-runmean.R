## This file was created automatically, do not edit by hand.
#' runmean
#'
#' Running statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param nts, INTEGER - Number of timesteps
#'
#' @export
cdo_runmean <- function(ifile, nts = NULL, ofile = NULL) {
  cdo(operator = operators$runmean,
      input = list(ifile),
      params = list(nts = nts),
      output = c(ofile)
  )
}
