## This file was created automatically, do not edit by hand.
#' timavg
#'
#' Statistical values over all timesteps
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_timavg <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timavg,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
