# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2,ifile3 Strings with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param p FLOAT - Percentile number in \{0, ..., 100\}
#' @param nts INTEGER - Number of timesteps
#' @param rm_c STRING - Read method circular
#' @param pm_r8 STRING - Percentile method rtype8
#'
#' @export
#' @rdname ydrunpctl
cdo_ydrunpctl <- function(ifile1, ifile2, ifile3, p = NULL, nts = NULL, rm_c = NULL, pm_r8 = NULL, ofile = NULL) {
  cdo(operator = operators$ydrunpctl,
      input = list(ifile1, ifile2, ifile3),
      params = list(p = p, nts = nts, rm_c = rm_c, pm_r8 = pm_r8),
      output = c(ofile)
  )
}
