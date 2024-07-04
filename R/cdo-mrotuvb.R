## This file was created automatically, do not edit by hand.
#' mrotuvb
#'
#' Backward rotation of MPIOM data
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_mrotuvb <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$mrotuvb,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
