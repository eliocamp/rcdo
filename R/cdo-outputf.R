## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.

#' @param format STRING - C-style format for one element (e.g. %13.6g)
#' @param nelem INTEGER - Number of elements for each row (default: nelem = 1)
#'
#' @export
#' @rdname output
cdo_outputf <- function(ifiles, format = NULL, nelem = NULL) {
  cdo(operator = operators$outputf,
      input = maybe_list(ifiles),
      params = list(format = format, nelem = nelem),
      output = c()
  )
}
