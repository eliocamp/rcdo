## This file was created automatically, do not edit by hand.
#' cmorlite
#'
#' CMOR lite
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param table, STRING - Name of the CMOR table as specified from PCMDI
#' @param convert, STRING - Converts the units if necessary
#'
#' @export
cdo_cmorlite <- function(ifile, table = NULL, convert = NULL, ofile = NULL) {
  cdo(operator = operators$cmorlite,
      input = list(ifile),
      params = list(table = table, convert = convert),
      output = ofile
  )
}
