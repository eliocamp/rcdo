## This file was created automatically, do not edit by hand.
#' setpartabp
#'
#' Set parameter table
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param table, STRING - Parameter table file or name
#' @param convert, STRING - Converts the units if necessary
#'
#' @export
cdo_setpartabp <- function(ifile, table = NULL, convert = NULL, ofile = NULL) {
  cdo(operator = operators$setpartabp,
      input = list(ifile),
      params = list(table = table, convert = convert),
      output = ofile
  )
}
