## This file was created automatically, do not edit by hand.
#' int
#'
#' Mathematical functions
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_int <- function(ifile, ofile = NULL) {
  cdo(operator = operators$int,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
