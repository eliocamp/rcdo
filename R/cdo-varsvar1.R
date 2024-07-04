## This file was created automatically, do not edit by hand.
#' varsvar1
#'
#' Statistical values over all variables
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_varsvar1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$varsvar1,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
