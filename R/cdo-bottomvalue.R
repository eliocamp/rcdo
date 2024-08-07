## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param isovalue FLOAT - Isosurface value
#'
#' @export
#' @rdname selsurface
cdo_bottomvalue <- function(ifile, isovalue = NULL, ofile = NULL) {
  cdo(operator = operators$bottomvalue,
      input = list(ifile),
      params = list(isovalue = isovalue),
      output = c(ofile)
  )
}
