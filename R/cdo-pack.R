## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param printparam, BOOL - Print pack parameters to stdout for each variable
#' @param filename, STRING - Read pack parameters from file for each variable\[format: name=&lt;&gt; add_offset=&lt;&gt; scale_factor=&lt;&gt;\]
#'
#' @export
#' @rdname pack
cdo_pack <- function(ifile, printparam = NULL, filename = NULL, ofile = NULL) {
  cdo(operator = operators$pack,
      input = list(ifile),
      params = list(printparam = printparam, filename = filename),
      output = c(ofile)
  )
}
