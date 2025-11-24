# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param table STRING - Parameter table file or name
#' @param convert STRING - Converts the units if necessary
#'
#' @export
#' @rdname setpartab
cdo_setpartabn <- function(ifile, table = NULL, convert = NULL, ofile = NULL) {
  cdo(operator = operators$setpartabn,
      input = list(ifile),
      params = list(table = table, convert = convert),
      output = c(ofile)
  )
}
