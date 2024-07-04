## This file was created automatically, do not edit by hand.
#' seasmax
#'
#' Seasonal statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_seasmax <- function(ifile, ofile = NULL) {
  cdo(operator = operators$seasmax,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
