## This file was created automatically, do not edit by hand.
#' aexpr
#'
#' Evaluate expressions
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param instr, STRING - Processing instructions (need to be 'quoted' in most cases)
#' @param filename, STRING - File with processing instructions
#'
#' @export
cdo_aexpr <- function(ifile, instr = NULL, filename = NULL, ofile = NULL) {
  cdo(operator = operators$aexpr,
      input = list(ifile),
      params = list(instr = instr, filename = filename),
      output = ofile
  )
}
