## This file was created automatically, do not edit by hand.
#' timrange
#'
#' Statistical values over all timesteps
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_timrange <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timrange,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
