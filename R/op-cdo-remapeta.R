# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param vct STRING - File name of an ASCII dataset with the vertical coordinate table
#' @param oro STRING - File name with the orography (surf. geopotential) of the target dataset (optional)
#'
#' @export
#' @rdname remapeta
cdo_remapeta <- function(ifile, vct = NULL, oro = NULL, ofile = NULL) {
  cdo(operator = operators$remapeta,
      input = list(ifile),
      params = list(vct = vct, oro = oro),
      output = c(ofile)
  )
}
