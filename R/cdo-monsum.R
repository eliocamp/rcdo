## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param complete_only, BOOL - Process only complete years
#'
#' @export
#' @rdname monstat
cdo_monsum <- function(ifile, complete_only = NULL, ofile = NULL) {
  cdo(operator = operators$monsum,
      input = list(ifile),
      params = list(complete_only = complete_only),
      output = c(ofile)
  )
}
