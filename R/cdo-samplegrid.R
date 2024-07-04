## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param factor, INTEGER - Resample factor, typically 2, which will half the resolution
#'
#' @export
#' @rdname samplegrid
cdo_samplegrid <- function(ifile, factor = NULL, ofile = NULL) {
  cdo(operator = operators$samplegrid,
      input = list(ifile),
      params = list(factor = factor),
      output = c(ofile)
  )
}
