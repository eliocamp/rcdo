## This file was created automatically, do not edit by hand.
#' timsum
#'
#' Statistical values over all timesteps
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_timsum <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timsum,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
