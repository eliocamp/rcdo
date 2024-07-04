## This file was created automatically, do not edit by hand.
#' sin
#'
#' Mathematical functions
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_sin <- function(ifile, ofile = NULL) {
  cdo(operator = operators$sin,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
