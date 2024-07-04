## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param c, FLOAT - Constant
#'
#' @export
#' @rdname compc
cdo_lec <- function(ifile, c = NULL, ofile = NULL) {
  cdo(operator = operators$lec,
      input = list(ifile),
      params = list(c = c),
      output = c(ofile)
  )
}
