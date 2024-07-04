## This file was created automatically, do not edit by hand.
#' timstd
#'
#' Statistical values over all timesteps
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_timstd <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timstd,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
