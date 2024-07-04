## This file was created automatically, do not edit by hand.
#' setrtoc2
#'
#' Replace variable values
#'
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param oldval,newval,..., FLOAT - Pairs of old and new values
#' @param rmin, FLOAT - Lower bound
#' @param rmax, FLOAT - Upper bound
#' @param c, FLOAT - New value - inside range
#' @param c2, FLOAT - New value - outside range
#'
#' @export
cdo_setrtoc2 <- function(ifile, oldval,newval,... = NULL, rmin = NULL, rmax = NULL, c = NULL, c2 = NULL, ofile = NULL) {
  cdo(operator = operators$setrtoc2,
      input = list(ifile),
      params = list(oldval,newval,... = oldval,newval,..., rmin = rmin, rmax = rmax, c = c, c2 = c2),
      output = c(ofile)
  )
}
