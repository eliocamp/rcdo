## This file was created automatically, do not edit by hand.
#' seasmean
#'
#' Seasonal statistics
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_seasmean <- function(ifile, ofile = NULL) {
  cdo(operator = operators$seasmean,
      input = list(ifile),
      params = NULL,
      output = ofile
  )
}
