# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param code INTEGER - Code number
#' @param oldcode INTEGER - Pairs of old and new code numbers
#' @param newcode INTEGER - Pairs of old and new code numbers
#' @param oldparam STRING - Pairs of old and new parameter identifiers
#' @param newparam STRING - Pairs of old and new parameter identifiers
#' @param name STRING - Variable name
#' @param oldname STRING - Pairs of old and new variable names
#' @param newname STRING - Pairs of old and new variable names
#' @param oldlev FLOAT - Old level
#' @param newlev FLOAT - New level
#'
#' @export
#' @rdname change
cdo_chlevelc <- function(ifile, code = NULL, oldcode = NULL, newcode = NULL, oldparam = NULL, newparam = NULL, name = NULL, oldname = NULL, newname = NULL, oldlev = NULL, newlev = NULL, ofile = NULL) {
  cdo(operator = operators$chlevelc,
      input = list(ifile),
      params = list(code = code, oldcode = oldcode, newcode = newcode, oldparam = oldparam, newparam = newparam, name = name, oldname = oldname, newname = newname, oldlev = oldlev, newlev = newlev),
      output = c(ofile)
  )
}
