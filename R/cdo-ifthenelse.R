## This file was created automatically, do not edit by hand.
#' ifthenelse
#'
#' Conditional select  two fields
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_ifthenelse <- function(ifile1, ifile2, ifile3, ofile = NULL) {
  cdo(operator = operators$ifthenelse,
      input = list(ifile1,ifile2,ifile3),
      params = NULL,
      output = c(ofile)
  )
}
