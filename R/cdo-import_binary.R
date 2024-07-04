## This file was created automatically, do not edit by hand.
#' import_binary
#'
#' Import binary data sets
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_import_binary <- function(ifile, ofile = NULL) {
  cdo(operator = operators$import_binary,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
