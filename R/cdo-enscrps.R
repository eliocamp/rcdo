## This file was created automatically, do not edit by hand.
#' enscrps
#'
#' Ensemble validation tools
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_enscrps <- function(..., obase = NULL) {
  cdo(operator = operators$enscrps,
      input = list(...),
      params = NULL,
      output = c(obase)
  )
}
