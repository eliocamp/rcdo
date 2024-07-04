## This file was created automatically, do not edit by hand.
#' splityearmon
#'
#' Split timesteps of a dataset
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param format, STRING - C-style format for strftime() (e.g. %B for the full month name)
#'
#' @export
cdo_splityearmon <- function(ifile, format = NULL, obase = NULL) {
  cdo(operator = operators$splityearmon,
      input = list(ifile),
      params = list(format = format),
      output = c(obase)
  )
}
