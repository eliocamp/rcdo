# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile1,ifile2 Strings with the path to the input files.
#' @param ofile String with the path to the output file.

#'
#' @export
#' @rdname ecar95p
cdo_eca_r95p <- function(ifile1, ifile2, ofile = NULL) {
  cdo(operator = operators$eca_r95p,
      input = list(ifile1, ifile2),
      params = NULL,
      output = c(ofile)
  )
}
