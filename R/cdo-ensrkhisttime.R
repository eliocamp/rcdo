## This file was created automatically, do not edit by hand.
#' ensrkhisttime
#'
#' Statistical values over an ensemble
#'
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ensrkhisttime <- function(ifiles, ofile = NULL) {
  cdo(operator = operators$ensrkhisttime,
      input = as.list(ifiles),
      params = NULL,
      output = c(ofile)
  )
}
