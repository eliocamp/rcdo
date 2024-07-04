## This file was created automatically, do not edit by hand.
#' dhoursum
#'
#' Multi
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_dhoursum <- function(ifile, ofile = NULL) {
  cdo(operator = operators$dhoursum,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
