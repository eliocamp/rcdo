# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param equal BOOL - Set to false for unequal distributed timesteps (default: true)
#'
#' @export
#' @rdname detrend
cdo_detrend <- function(ifile, equal = NULL, ofile = NULL) {
  cdo(operator = operators$detrend,
      input = list(ifile),
      params = list(equal = equal),
      output = c(ofile)
  )
}
