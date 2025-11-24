# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname consecstat
cdo_consects <- function(ifile, ofile = NULL) {
  cdo(operator = operators$consects,
      input = list(ifile),
      params = NULL,
      output = c(ofile)
  )
}
