## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param instr STRING - Processing instructions (need to be 'quoted' in most cases)
#' @param filename STRING - File with processing instructions
#'
#' @export
#' @rdname expr
cdo_expr <- function(ifile, instr = NULL, filename = NULL, ofile = NULL) {
  cdo(operator = operators$expr,
      input = list(ifile),
      params = list(instr = instr, filename = filename),
      output = c(ofile)
  )
}
