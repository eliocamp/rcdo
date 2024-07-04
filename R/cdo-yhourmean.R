## This file was created automatically, do not edit by hand.
#' yhourmean
#'
#' Multi
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_yhourmean <- function(ifile, ofile = NULL) {
  cdo(operator = operators$yhourmean,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
