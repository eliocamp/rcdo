## This file was created automatically, do not edit by hand.
#' ensroc
#'
#' Statistical values over an ensemble
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_ensroc <- function(..., ofile = NULL) {
  cdo(operator = operators$ensroc,
      input = list(...),
      params = NULL,
      output = ofile
  )
}
