#' merge
#'
#' Merge files
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.

#'
#' @export
cdo_merge <- function(..., ofile = NULL) {
  cdo(operator = operators$merge,
      input = list(...),
      params = NULL,
      output = ofile
  )
}
