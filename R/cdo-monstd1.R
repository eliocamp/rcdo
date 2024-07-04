## This file was created automatically, do not edit by hand.
#' monstd1
#'
#' Monthly statistics
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param complete_only, BOOL - Process only complete years
#'
#' @export
cdo_monstd1 <- function(ifile, complete_only = NULL, ofile = NULL) {
  cdo(operator = operators$monstd1,
      input = list(ifile),
      params = list(complete_only = complete_only),
      output = c(ofile)
  )
}
