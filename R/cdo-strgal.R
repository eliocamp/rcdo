## This file was created automatically, do not edit by hand.
#' strgal
#'
#' Strong gale days index per time period
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_strgal <- function(ifile, ofile = NULL) {
  cdo(operator = operators$strgal,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
