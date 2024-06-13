#' splitcode
#'
#' Split code numbers
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param swap, Swap the position of obase and xxx in the output filename
#'
#' @export
cdo_splitcode <- function(ifile, swap = NULL, obase = NULL) {
  cdo(operator = operators$splitcode,
      input = list(ifile),
      params = list(swap = swap),
      output = obase
  )
}
