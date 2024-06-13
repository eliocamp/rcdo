#' replace
#'
#' The replace operator replaces variables of ifile1 with variables from ifile2 and write the result to ofile.
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_replace <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$replace,
      input = list(ifile1, ifile2),
      params = NULL,
      output = ofile
  )
}
