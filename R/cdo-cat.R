## This file was created automatically, do not edit by hand.
#' cat
#'
#' Copy datasets
#'
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
cdo_cat <- function(ifiles, ofile = NULL) {
  cdo(operator = operators$cat,
      input = as.list(ifiles),
      params = NULL,
      output = c(ofile)
  )
}
