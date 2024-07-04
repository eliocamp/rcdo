## This file was created automatically, do not edit by hand.
#' nint
#'
#' Mathematical functions
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_nint <- function(ifile, ofile = NULL) {
  cdo(operator = operators$nint,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
