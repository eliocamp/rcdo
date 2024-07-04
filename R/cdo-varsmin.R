## This file was created automatically, do not edit by hand.
#' varsmin
#'
#' Statistical values over all variables
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_varsmin <- function(ifile, ofile = NULL) {
  cdo(operator = operators$varsmin,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
