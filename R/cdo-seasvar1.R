## This file was created automatically, do not edit by hand.
#' seasvar1
#'
#' Seasonal statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_seasvar1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$seasvar1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
