## This file was created automatically, do not edit by hand.
#' daysub
#'
#' Daily arithmetic
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_daysub <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$daysub,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
