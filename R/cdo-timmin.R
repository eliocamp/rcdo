## This file was created automatically, do not edit by hand.
#' timmin
#'
#' Statistical values over all timesteps
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_timmin <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timmin,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
