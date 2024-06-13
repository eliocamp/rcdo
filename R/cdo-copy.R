#' copy
#'
#' Copy datasets. Copies all input datasets to ofile
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_copy <- function(..., ofile = NULL) {
  cdo(operator = operators$copy,
      input = list(...),
      params = NULL,
      output = ofile
  )
}
