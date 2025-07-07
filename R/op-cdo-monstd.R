## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param complete_only BOOL - Process the last month only if it is complete
#'
#' @export
#' @rdname monstat
cdo_monstd <- function(ifile, complete_only = NULL, ofile = NULL) {
  cdo(operator = operators$monstd,
      input = list(ifile),
      params = list(complete_only = complete_only),
      output = c(ofile)
  )
}
