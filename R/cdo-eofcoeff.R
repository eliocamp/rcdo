## This file was created automatically, do not edit by hand.
#' eofcoeff
#'
#' Principal coefficients of EOFs
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_eofcoeff <- function(ifile1, ifile2, obase = NULL) {
  cdo(operator = operators$eofcoeff,
      input = list(ifile1,ifile2),
      params = NULL,
      output = c(obase)
  )
}
