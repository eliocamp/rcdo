# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param nday INTEGER - Number of consecutive days (default: nday = 6)
#' @param T FLOAT - Temperature threshold (unit: °C; default: T = 5°C)
#' @param fland FLOAT - Land fraction threshold (default: fland = 0.5)
#'
#' @export
#' @rdname ecagsl
cdo_eca_gsl <- function(ifile1, ifile2, nday = NULL, T = NULL, fland = NULL, ofile = NULL) {
  cdo(operator = operators$eca_gsl,
      input = list(ifile1, ifile2),
      params = list(nday = nday, T = T, fland = fland),
      output = c(ofile)
  )
}
