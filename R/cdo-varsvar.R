## This file was created automatically, do not edit by hand.
#' varsvar
#'
#' Statistical values over all variables
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_varsvar <- function(ifile, ofile = NULL) {
  cdo(operator = operators$varsvar,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
