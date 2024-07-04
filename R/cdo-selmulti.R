## This file was created automatically, do not edit by hand.
#' selmulti
#'
#' Select multiple fields via GRIB1 parameters
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_selmulti <- function(ifile, ofile = NULL) {
  cdo(operator = operators$selmulti,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
