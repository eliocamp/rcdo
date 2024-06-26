## This file was created automatically, do not edit by hand.
#' pack
#'
#' Pack data
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param printparam, BOOL - Print pack parameters to stdout for each variable
#' @param filename, STRING - Read pack parameters from file for each variable[format: name=&lt;&gt; add_offset=&lt;&gt; scale_factor=&lt;&gt;]
#'
#' @export
cdo_pack <- function(ifile, printparam = NULL, filename = NULL, ofile = NULL) {
  cdo(operator = operators$pack,
      input = list(ifile),
      params = list(printparam = printparam, filename = filename),
      output = ofile
  )
}
