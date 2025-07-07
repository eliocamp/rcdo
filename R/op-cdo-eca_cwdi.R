## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param nday INTEGER - Number of consecutive days (default: nday = 6)
#' @param T FLOAT - Temperature offset (unit: °C; default: T = 5°C)
#'
#' @export
#' @rdname ecacwdi
cdo_eca_cwdi <- function(ifile1, ifile2, nday = NULL, T = NULL, ofile = NULL) {
  cdo(operator = operators$eca_cwdi,
      input = list(ifile1, ifile2),
      params = list(nday = nday, T = T),
      output = c(ofile)
  )
}
