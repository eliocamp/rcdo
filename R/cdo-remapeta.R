## This file was created automatically, do not edit by hand.
#' remapeta
#'
#' Remap vertical hybrid level
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param vct, STRING - File name of an ASCII dataset with the vertical coordinate table
#' @param oro, STRING - File name with the orography (surf. geopotential) of the target dataset (optional)
#'
#' @export
cdo_remapeta <- function(ifile, vct = NULL, oro = NULL, ofile = NULL) {
  cdo(operator = operators$remapeta,
      input = list(ifile),
      params = list(vct = vct, oro = oro),
      output = ofile
  )
}
