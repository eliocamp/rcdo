# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param trunc INTEGER - New spectral resolution
#'
#' @export
#' @rdname specconv
cdo_sp2sp <- function(ifile, trunc = NULL, ofile = NULL) {
  cdo(operator = operators$sp2sp,
      input = list(ifile),
      params = list(trunc = trunc),
      output = c(ofile)
  )
}
