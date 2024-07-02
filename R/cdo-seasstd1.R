## This file was created automatically, do not edit by hand.
#' seasstd1
#'
#' Seasonal statistics
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_seasstd1 <- function(ifile, ofile = NULL) {
  cdo(operator = operators$seasstd1,
      input = list(ifile),
      params = NULL,
      output = ofile
  )
}
