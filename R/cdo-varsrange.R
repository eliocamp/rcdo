## This file was created automatically, do not edit by hand.
#' varsrange
#'
#' Statistical values over all variables
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_varsrange <- function(ifile, ofile = NULL) {
  cdo(operator = operators$varsrange,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
