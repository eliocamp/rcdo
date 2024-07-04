## This file was created automatically, do not edit by hand.
#' copy
#'
#' Copy datasets
#'
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_copy <- function(ifiles, ofile = NULL) {
  cdo(operator = operators$copy,
      input = as.list(ifiles),
      params = NULL,
      output = c(ofile)
  )
}
