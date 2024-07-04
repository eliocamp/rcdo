## This file was created automatically, do not edit by hand.
#' seasstd
#'
#' Seasonal statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_seasstd <- function(ifile, ofile = NULL) {
  cdo(operator = operators$seasstd,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
