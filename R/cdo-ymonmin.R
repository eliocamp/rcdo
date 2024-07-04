## This file was created automatically, do not edit by hand.
#' ymonmin
#'
#' Multi
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_ymonmin <- function(ifile, ofile = NULL) {
  cdo(operator = operators$ymonmin,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
