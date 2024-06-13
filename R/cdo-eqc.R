#' eqc
#'
#' Compares all fields of a dataset with a constant
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param c, Constant
#'
#' @export
cdo_eqc <- function(ifile, c, ofile = NULL) {
  cdo(operator = operators$eqc,
      input = list(ifile),
      params = list(c = c),
      output = ofile
  )
}
