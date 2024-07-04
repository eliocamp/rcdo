## This file was created automatically, do not edit by hand.
#' splithour
#'
#' Split timesteps of a dataset
#'
#' @param ifile String with the path to the input file.
#' @param obase String with the basename of the output files.
#' @param format, STRING - C-style format for strftime() (e.g. %B for the full month name)
#'
#' @export
cdo_splithour <- function(ifile, format = NULL, obase = NULL) {
  cdo(operator = operators$splithour,
      input = list(ifile),
      params = list(format = format),
      output = c(obase)
  )
}
