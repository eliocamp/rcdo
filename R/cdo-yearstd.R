## This file was created automatically, do not edit by hand.
#' yearstd
#'
#' Yearly statistics
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param complete_only, BOOL - Process only complete years
#'
#' @export
cdo_yearstd <- function(ifile, complete_only = NULL, ofile = NULL) {
  cdo(operator = operators$yearstd,
      input = list(ifile),
      params = list(complete_only = complete_only),
      output = c(ofile)
  )
}
