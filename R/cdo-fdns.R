## This file was created automatically, do not edit by hand.
#' fdns
#'
#' Frost days where no snow index per time period
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_fdns <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$fdns,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
