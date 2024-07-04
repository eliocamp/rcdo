## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param p FLOAT - Percentile number in \{0, ..., 100\}
#'
#' @export
#' @rdname ensstat
cdo_enssum <- function(ifiles, p = NULL, ofile = NULL) {
  cdo(operator = operators$enssum,
      input = as.list(ifiles),
      params = list(p = p),
      output = c(ofile)
  )
}
