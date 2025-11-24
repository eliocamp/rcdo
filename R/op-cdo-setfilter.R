# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param filename STRING - Read filter specification per variable from file \[format: varname=\&quot;&lt;filterspec&gt;\&quot;\]
#'
#' @export
#' @rdname setfilter
cdo_setfilter <- function(ifile, filename = NULL, ofile = NULL) {
  cdo(operator = operators$setfilter,
      input = list(ifile),
      params = list(filename = filename),
      output = c(ofile)
  )
}
