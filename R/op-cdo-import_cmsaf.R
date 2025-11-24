# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname importcmsaf
cdo_import_cmsaf <- function(ifile, ofile = NULL) {
  cdo(operator = operators$import_cmsaf,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
