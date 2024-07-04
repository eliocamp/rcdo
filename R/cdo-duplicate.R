## This file was created automatically, do not edit by hand.
#' duplicate
#'
#' Duplicates a dataset
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param ndup, INTEGER - Number of duplicates, default is 2.
#'
#' @export
cdo_duplicate <- function(ifile, ndup = NULL, ofile = NULL) {
  cdo(operator = operators$duplicate,
      input = list(ifile),
      params = list(ndup = ndup),
      output = c(ofile)
  )
}
