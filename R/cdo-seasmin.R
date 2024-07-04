## This file was created automatically, do not edit by hand.
#' seasmin
#'
#' Seasonal statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_seasmin <- function(ifile, ofile = NULL) {
  cdo(operator = operators$seasmin,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
