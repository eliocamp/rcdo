## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2,ifile3 Strings with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param equal, BOOL - Set to false for unequal distributed timesteps (default: true)
#'
#' @export
#' @rdname trendarith
cdo_addtrend <- function(ifile1, ifile2, ifile3, equal = NULL, ofile = NULL) {
  cdo(operator = operators$addtrend,
      input = list(ifile1, ifile2, ifile3),
      params = list(equal = equal),
      output = c(ofile)
  )
}
