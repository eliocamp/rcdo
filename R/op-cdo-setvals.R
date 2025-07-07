## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param oldval FLOAT - Pairs of old and new values
#' @param newval FLOAT - Pairs of old and new values
#' @param rmin FLOAT - Lower bound
#' @param rmax FLOAT - Upper bound
#' @param c FLOAT - New value - inside range
#' @param c2 FLOAT - New value - outside range
#'
#' @export
#' @rdname replacevalues
cdo_setvals <- function(ifile, oldval = NULL, newval = NULL, rmin = NULL, rmax = NULL, c = NULL, c2 = NULL, ofile = NULL) {
  cdo(operator = operators$setvals,
      input = list(ifile),
      params = list(oldval = oldval, newval = newval, rmin = rmin, rmax = rmax, c = c, c2 = c2),
      output = c(ofile)
  )
}
