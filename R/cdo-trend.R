## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile1,ofile2 Strings with the path to the output files.
#' @param equal BOOL - Set to false for unequal distributed timesteps (default: true)
#'
#' @export
#' @rdname trend
cdo_trend <- function(ifile, equal = NULL, ofile1 = NULL, ofile2 = NULL) {
  cdo(operator = operators$trend,
      input = list(ifile),
      params = list(equal = equal),
      output = c(ofile1,ofile2)
  )
}
