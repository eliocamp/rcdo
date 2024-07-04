## This file was created automatically, do not edit by hand.
#' deltat
#'
#' Difference between timesteps
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_deltat <- function(ifile, ofile = NULL) {
  cdo(operator = operators$deltat,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
