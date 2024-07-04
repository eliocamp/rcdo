## This file was created automatically, do not edit by hand.
#' seasrange
#'
#' Seasonal statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_seasrange <- function(ifile, ofile = NULL) {
  cdo(operator = operators$seasrange,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
