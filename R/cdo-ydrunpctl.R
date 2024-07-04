## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2,ifile3 Strings with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param p FLOAT - Percentile number in \{0, ..., 100\}
#' @param nts INTEGER - Number of timesteps
#'
#' @export
#' @rdname ydrunpctl
cdo_ydrunpctl <- function(ifile1, ifile2, ifile3, p = NULL, nts = NULL, ofile = NULL) {
  cdo(operator = operators$ydrunpctl,
      input = list(ifile1, ifile2, ifile3),
      params = list(p = p, nts = nts),
      output = c(ofile)
  )
}
