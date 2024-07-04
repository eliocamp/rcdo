## This file was created automatically, do not edit by hand.
#' setpartabn
#'
#' Set parameter table
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param table, STRING - Parameter table file or name
#' @param convert, STRING - Converts the units if necessary
#'
#' @export
cdo_setpartabn <- function(ifile, table = NULL, convert = NULL, ofile = NULL) {
  cdo(operator = operators$setpartabn,
      input = list(ifile),
      params = list(table = table, convert = convert),
      output = c(ofile)
  )
}
