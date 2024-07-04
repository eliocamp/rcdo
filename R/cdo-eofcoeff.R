## This file was created automatically, do not edit by hand.
#' eofcoeff
#'
#' Principal coefficients of EOFs
#'
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param obase String with the basename of the output files.

#'
#' @export
cdo_eofcoeff <- function(ifile1, ifile2, obase = NULL) {
  cdo(operator = operators$eofcoeff,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(obase)
  )
}
