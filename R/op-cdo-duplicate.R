# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param ndup INTEGER - Number of duplicates, default is 2.
#'
#' @export
#' @rdname duplicate
cdo_duplicate <- function(ifile, ndup = NULL, ofile = NULL) {
  cdo(operator = operators$duplicate,
      input = list(ifile),
      params = list(ndup = ndup),
      output = c(ofile)
  )
}
