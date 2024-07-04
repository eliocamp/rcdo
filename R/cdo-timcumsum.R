## This file was created automatically, do not edit by hand.
#' timcumsum
#'
#' Cumulative sum over all timesteps
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_timcumsum <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timcumsum,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
