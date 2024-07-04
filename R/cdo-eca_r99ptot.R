## This file was created automatically, do not edit by hand.
#' eca_r99ptot
#'
#' Precipitation percent due to R99p days
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_eca_r99ptot <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$eca_r99ptot,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
