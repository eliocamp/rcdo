## This file was created automatically, do not edit by hand.
#' import_amsr
#'
#' Import AMSR binary files
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_import_amsr <- function(ifile, ofile = NULL) {
  cdo(operator = operators$import_amsr,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
