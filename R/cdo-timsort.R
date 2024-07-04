## This file was created automatically, do not edit by hand.
#' timsort
#'
#' Timsort
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_timsort <- function(ifile, ofile = NULL) {
  cdo(operator = operators$timsort,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
