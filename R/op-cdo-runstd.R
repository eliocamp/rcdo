# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param nts INTEGER - Number of timesteps
#'
#' @export
#' @rdname runstat
cdo_runstd <- function(ifile, nts = NULL, ofile = NULL) {
  cdo(operator = operators$runstd,
      input = list(ifile),
      params = list(nts = nts),
      output = c(ofile)
  )
}
