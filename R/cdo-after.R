## This file was created automatically, do not edit by hand.
#' after
#'
#' ECHAM standard post processor
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param vct, STRING - File with VCT in ASCII format
#'
#' @export
cdo_after <- function(..., vct = NULL, ofile = NULL) {
  cdo(operator = operators$after,
      input = list(...),
      params = list(vct = vct),
      output = ofile
  )
}
