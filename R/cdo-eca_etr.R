## This file was created automatically, do not edit by hand.
#' eca_etr
#'
#' Intra
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_eca_etr <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$eca_etr,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
