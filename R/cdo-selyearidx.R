## This file was created automatically, do not edit by hand.
#' selyearidx
#'
#' Select year by index
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_selyearidx <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$selyearidx,
      input = list(ifile1,ifile2),
      params = NULL,
      output = ofile
  )
}
