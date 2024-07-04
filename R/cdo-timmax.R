## This file was created automatically, do not edit by hand.
#' timmax
#'
#' Statistical values over all timesteps
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_timmax <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timmax,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
