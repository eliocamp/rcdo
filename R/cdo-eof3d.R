## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile1,ofile2 Strings with the path to the output files.
#' @param neof INTEGER - Number of eigen functions
#'
#' @export
#' @rdname eofs
cdo_eof3d <- function(ifile, neof = NULL, ofile1 = NULL, ofile2 = NULL) {
  cdo(operator = operators$eof3d,
      input = list(ifile),
      params = list(neof = neof),
      output = c(ofile1,ofile2)
  )
}
