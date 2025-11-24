# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param table STRING - Parameter table file or name
#' @param code INTEGER - Code number
#' @param param STRING - Parameter identifier (GRIB1: code\[.tabnum\]; GRIB2: num\[.cat\[.dis\]\])
#' @param name STRING - Variable name
#' @param level FLOAT - New level
#' @param ltype INTEGER - GRIB level type
#' @param maxsteps INTEGER - Maximum number of timesteps
#'
#' @export
#' @rdname set
cdo_setname <- function(ifile, table = NULL, code = NULL, param = NULL, name = NULL, level = NULL, ltype = NULL, maxsteps = NULL, ofile = NULL) {
  cdo(operator = operators$setname,
      input = list(ifile),
      params = list(table = table, code = code, param = param, name = name, level = level, ltype = ltype, maxsteps = maxsteps),
      output = c(ofile)
  )
}
