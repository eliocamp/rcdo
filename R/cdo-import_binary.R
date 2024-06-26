## This file was created automatically, do not edit by hand.
#' import_binary
#'
#' Import binary data sets
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_import_binary <- function(ifile, ofile = NULL) {
  cdo(operator = operators$import_binary,
      input = list(ifile),
      params = NULL,
      output = ofile
  )
}
