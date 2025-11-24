# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param nts INTEGER - Number of timesteps
#' @param rm_c STRING - Read method circular
#'
#' @export
#' @rdname ydrunstat
cdo_ydrunsum <- function(ifile, nts = NULL, rm_c = NULL, ofile = NULL) {
  cdo(operator = operators$ydrunsum,
      input = list(ifile),
      params = list(nts = nts, rm_c = rm_c),
      output = c(ofile)
  )
}
