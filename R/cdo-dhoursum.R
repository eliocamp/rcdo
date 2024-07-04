## This file was created automatically, do not edit by hand.
#' dhoursum
#'
#' Multi
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_dhoursum <- function(ifile, ofile = NULL) {
  cdo(operator = operators$dhoursum,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
