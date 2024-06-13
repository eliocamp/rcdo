#' eq
#'
#' compares two datasets field by field
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_eq <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$eq,
      input = list(ifile1, ifile2),
      params = NULL,
      output = ofile
  )
}
