## This file was created automatically, do not edit by hand.
#' ymonvar1
#'
#' Multi
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_ymonvar1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$ymonvar1,
      input = list(ifile),
      params = NULL,
      output = ofile
  )
}
