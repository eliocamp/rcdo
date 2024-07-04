## This file was created automatically, do not edit by hand.
#' @param ifiles Character vector with the path to the input files.
#' @param ofile String with the path to the output file.
#' @param name, STRING - Comma-separated list of variable names.
#' @param param, STRING - Comma-separated list of parameter identifiers.
#' @param code, INTEGER - Comma-separated list or first/last\[/inc\] range of code numbers.
#' @param level, FLOAT - Comma-separated list of vertical levels.
#' @param levrange, FLOAT - First and last value of the level range.
#' @param levidx, INTEGER - Comma-separated list or first/last\[/inc\] range of index of levels.
#' @param zaxisname, STRING - Comma-separated list of zaxis names.
#' @param zaxisnum, INTEGER - Comma-separated list or first/last\[/inc\] range of zaxis numbers.
#' @param ltype, INTEGER - Comma-separated list or first/last\[/inc\] range of GRIB level types.
#' @param gridname, STRING - Comma-separated list of grid names.
#' @param gridnum, INTEGER - Comma-separated list or first/last\[/inc\] range of grid numbers.
#' @param steptype, STRING - Comma-separated list of timestep types (constant, avg, accum, min, max, range, diff, sum)
#' @param date, STRING - Comma-separated list of dates (format YYYY-MM-DDThh:mm:ss).
#' @param startdate, STRING - Start date (format YYYY-MM-DDThh:mm:ss).
#' @param enddate, STRING - End date (format YYYY-MM-DDThh:mm:ss).
#' @param minute, INTEGER - Comma-separated list or first/last\[/inc\] range of minutes.
#' @param hour, INTEGER - Comma-separated list or first/last\[/inc\] range of hours.
#' @param day, INTEGER - Comma-separated list or first/last\[/inc\] range of days.
#' @param month, INTEGER - Comma-separated list or first/last\[/inc\] range of months.
#' @param season, STRING - Comma-separated list of seasons (substring of DJFMAMJJASOND or ANN).
#' @param year, INTEGER - Comma-separated list or first/last\[/inc\] range of years.
#' @param dom, STRING - Comma-separated list of the day of month (e.g. 29feb).
#' @param timestep, INTEGER - Comma-separated list or first/last\[/inc\] range of timesteps. Negative values select timesteps from the end (NetCDF only).
#' @param timestep_of_year, INTEGER - Comma-separated list or first/last\[/inc\] range of timesteps of year.
#' @param timestepmask, STRING - Read timesteps from a mask file.
#'
#' @export
#' @rdname select
cdo_delete <- function(ifiles, name = NULL, param = NULL, code = NULL, level = NULL, levrange = NULL, levidx = NULL, zaxisname = NULL, zaxisnum = NULL, ltype = NULL, gridname = NULL, gridnum = NULL, steptype = NULL, date = NULL, startdate = NULL, enddate = NULL, minute = NULL, hour = NULL, day = NULL, month = NULL, season = NULL, year = NULL, dom = NULL, timestep = NULL, timestep_of_year = NULL, timestepmask = NULL, ofile = NULL) {
  cdo(operator = operators$delete,
      input = as.list(ifiles),
      params = list(name = name, param = param, code = code, level = level, levrange = levrange, levidx = levidx, zaxisname = zaxisname, zaxisnum = zaxisnum, ltype = ltype, gridname = gridname, gridnum = gridnum, steptype = steptype, date = date, startdate = startdate, enddate = enddate, minute = minute, hour = hour, day = day, month = month, season = season, year = year, dom = dom, timestep = timestep, timestep_of_year = timestep_of_year, timestepmask = timestepmask),
      output = c(ofile)
  )
}
