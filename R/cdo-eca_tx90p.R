## This file was created automatically, do not edit by hand.
#' eca_tx90p
#'
#' Very warm days percent wrt 90th percentile of reference period
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_eca_tx90p <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$eca_tx90p,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
