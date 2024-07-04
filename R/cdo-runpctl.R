## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param p FLOAT - Percentile number in \{0, ..., 100\}
#' @param nts INTEGER - Number of timesteps
#'
#' @export
#' @rdname runpctl
cdo_runpctl <- function(ifile, p = NULL, nts = NULL, ofile = NULL) {
  cdo(operator = operators$runpctl,
      input = list(ifile),
      params = list(p = p, nts = nts),
      output = c(ofile)
  )
}
