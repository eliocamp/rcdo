## This file was created automatically, do not edit by hand.
#' mrotuvb
#'
#' Backward rotation of MPIOM data
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_mrotuvb <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$mrotuvb,
      input = list(ifile1,ifile2),
      params = NULL,
      output = ofile
  )
}
