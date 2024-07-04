## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param table, STRING - Name of the CMOR table as specified from PCMDI
#' @param convert, STRING - Converts the units if necessary
#'
#' @export
#' @rdname cmorlite
cdo_cmorlite <- function(ifile, table = NULL, convert = NULL, ofile = NULL) {
  cdo(operator = operators$cmorlite,
      input = list(ifile),
      params = list(table = table, convert = convert),
      output = c(ofile)
  )
}
