## This file was created automatically, do not edit by hand.
#' ensrkhistspace
#'
#' Statistical values over an ensemble
#'
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_ensrkhistspace <- function(ifiles, ofile = NULL) {
  cdo(operator = operators$ensrkhistspace,
      input = as.list(ifiles),
      params = NULL,
      output = c(ofile)
  )
}
