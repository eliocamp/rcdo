## This file was created automatically, do not edit by hand.
#' setvals
#'
#' Replace variable values
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param oldval,newval,..., FLOAT - Pairs of old and new values
#' @param rmin, FLOAT - Lower bound
#' @param rmax, FLOAT - Upper bound
#' @param c, FLOAT - New value - inside range
#' @param c2, FLOAT - New value - outside range
#'
#' @export
cdo_setvals <- function(ifile, oldval,newval,... = NULL, rmin = NULL, rmax = NULL, c = NULL, c2 = NULL, ofile = NULL) {
  cdo(operator = operators$setvals,
      input = list(ifile),
      params = list(oldval,newval,... = oldval,newval,..., rmin = rmin, rmax = rmax, c = c, c2 = c2),
      output = ofile
  )
}
