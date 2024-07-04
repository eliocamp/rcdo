## This file was created automatically, do not edit by hand.
#' timstd1
#'
#' Statistical values over all timesteps
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_timstd1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timstd1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
