## This file was created automatically, do not edit by hand.
#' settime
#'
#' Set time
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param day, INTEGER - Value of the new day
#' @param month, INTEGER - Value of the new month
#' @param year, INTEGER - Value of the new year
#' @param units, STRING - Base units of the time axis (seconds, minutes, hours, days, months, years)
#' @param date, STRING - Date (format: YYYY-MM-DD)
#' @param time, STRING - Time (format: hh:mm:ss)
#' @param inc, STRING - Optional increment (seconds, minutes, hours, days, months, years) [default: 1hour]
#' @param frequency, STRING - Frequency of the time series (hour, day, month, year)
#' @param calendar, STRING - Calendar (standard, proleptic_gregorian, 360_day, 365_day, 366_day)
#' @param shiftValue, STRING - Shift value (e.g. -3hour)
#'
#' @export
cdo_settime <- function(ifile, day = NULL, month = NULL, year = NULL, units = NULL, date = NULL, time = NULL, inc = NULL, frequency = NULL, calendar = NULL, shiftValue = NULL, ofile = NULL) {
  cdo(operator = operators$settime,
      input = list(ifile),
      params = list(day = day, month = month, year = year, units = units, date = date, time = time, inc = inc, frequency = frequency, calendar = calendar, shiftValue = shiftValue),
      output = ofile
  )
}
