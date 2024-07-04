## This file was created automatically, do not edit by hand.
#' ydrunvar1
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param nts, INTEGER - Number of timesteps
#'
#' @export
cdo_ydrunvar1 <- function(ifile, nts = NULL, ofile = NULL) {
  cdo(operator = operators$ydrunvar1,
      input = list(ifile),
      params = list(nts = nts),
      output = c(ofile)
  )
}
