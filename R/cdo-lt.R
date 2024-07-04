## This file was created automatically, do not edit by hand.
#' lt
#'
#' Comparison of two fields
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_lt <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$lt,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
