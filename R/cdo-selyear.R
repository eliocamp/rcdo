## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param timesteps, INTEGER - Comma-separated list or first/last\[/inc\] range of timesteps. Negative values select timesteps from the end (NetCDF only).
#' @param times, STRING - Comma-separated list of times (format hh:mm:ss).
#' @param hours, INTEGER - Comma-separated list or first/last\[/inc\] range of hours.
#' @param days, INTEGER - Comma-separated list or first/last\[/inc\] range of days.
#' @param months, INTEGER - Comma-separated list or first/last\[/inc\] range of months.
#' @param years, INTEGER - Comma-separated list or first/last\[/inc\] range of years.
#' @param seasons, STRING - Comma-separated list of seasons (substring of DJFMAMJJASOND or ANN).
#' @param startdate, STRING - Start date (format YYYY-MM-DDThh:mm:ss).
#' @param enddate, STRING - End date (format YYYY-MM-DDThh:mm:ss) \[default: startdate\].
#' @param nts1, INTEGER - Number of timesteps before the selected month \[default: 0\].
#' @param nts2, INTEGER - Number of timesteps after the selected month \[default: nts1\].
#'
#' @export
#' @rdname seltime
cdo_selyear <- function(ifile, timesteps = NULL, times = NULL, hours = NULL, days = NULL, months = NULL, years = NULL, seasons = NULL, startdate = NULL, enddate = NULL, nts1 = NULL, nts2 = NULL, ofile = NULL) {
  cdo(operator = operators$selyear,
      input = list(ifile),
      params = list(timesteps = timesteps, times = times, hours = hours, days = days, months = months, years = years, seasons = seasons, startdate = startdate, enddate = enddate, nts1 = nts1, nts2 = nts2),
      output = c(ofile)
  )
}
