## This file was created automatically, do not edit by hand.
#' delparam
#'
#' Select fields
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param parameter, STRING - Comma-separated list of parameter identifiers.
#' @param codes, INTEGER - Comma-separated list or first/last[/inc] range of code numbers.
#' @param names, STRING - Comma-separated list of variable names.
#' @param stdnames, STRING - Comma-separated list of standard names.
#' @param levels, FLOAT - Comma-separated list of vertical levels.
#' @param levidx, INTEGER - Comma-separated list or first/last[/inc] range of index of levels.
#' @param ltypes, INTEGER - Comma-separated list or first/last[/inc] range of GRIB level types.
#' @param grids, STRING - Comma-separated list of grid names or numbers.
#' @param zaxes, STRING - Comma-separated list of z-axis types or numbers.
#' @param zaxisnames, STRING - Comma-separated list of z-axis names.
#' @param tabnums, INTEGER - Comma-separated list or range of parameter table numbers.
#'
#' @export
cdo_delparam <- function(ifile, parameter = NULL, codes = NULL, names = NULL, stdnames = NULL, levels = NULL, levidx = NULL, ltypes = NULL, grids = NULL, zaxes = NULL, zaxisnames = NULL, tabnums = NULL, ofile = NULL) {
  cdo(operator = operators$delparam,
      input = list(ifile),
      params = list(parameter = parameter, codes = codes, names = names, stdnames = stdnames, levels = levels, levidx = levidx, ltypes = ltypes, grids = grids, zaxes = zaxes, zaxisnames = zaxisnames, tabnums = tabnums),
      output = c(ofile)
  )
}
