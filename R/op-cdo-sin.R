# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname math
cdo_sin <- function(ifile, ofile = NULL) {
  cdo(operator = operators$sin,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
