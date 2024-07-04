## This file was created automatically, do not edit by hand.
#' ensstd
#'
#' Statistical values over an ensemble
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param p, FLOAT - Percentile number in {0, ..., 100}
#'
#' @export
cdo_ensstd <- function(..., p = NULL, ofile = NULL) {
  cdo(operator = operators$ensstd,
      input = list(...),
      params = list(p = p),
      output = c(ofile)
  )
}
