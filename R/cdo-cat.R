## This file was created automatically, do not edit by hand.
#' cat
#'
#' Copy datasets
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_cat <- function(..., ofile = NULL) {
  cdo(operator = operators$cat,
      input = list(...),
      params = NULL,
      output = c(ofile)
  )
}
