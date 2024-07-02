## This file was created automatically, do not edit by hand.
#' ydrunpctl
#'
#' Multi
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param p, FLOAT - Percentile number in {0, ..., 100}
#' @param nts, INTEGER - Number of timesteps
#'
#' @export
cdo_ydrunpctl <- function(ifile1, ifile2, ifile3, p = NULL, nts = NULL, ofile = NULL) {
  cdo(operator = operators$ydrunpctl,
      input = list(ifile1,ifile2,ifile3),
      params = list(p = p, nts = nts),
      output = ofile
  )
}
