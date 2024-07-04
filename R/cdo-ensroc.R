## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname ensstat2
cdo_ensroc <- function(ifiles, ofile = NULL) {
  cdo(operator = operators$ensroc,
      input = as.list(ifiles),
      params = NULL,
      output = c(ofile)
  )
}
