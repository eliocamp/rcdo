## This file was created automatically, do not edit by hand.
#' unpack
#'
#' Unpack data
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_unpack <- function(ifile, ofile = NULL) {
  cdo(operator = operators$unpack,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
