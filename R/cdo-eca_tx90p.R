## This file was created automatically, do not edit by hand.
#' eca_tx90p
#'
#' Very warm days percent wrt 90th percentile of reference period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_eca_tx90p <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$eca_tx90p,
      input = list(ifile1,ifile2),
      params = NULL,
      output = c(ofile)
  )
}
