## This file was created automatically, do not edit by hand.
#' inttime
#'
#' Time interpolation
#'
#' @param ifile,ifile1,ifile2 String with the path to the input file(s).
#' @param ofile String with the path to the output file.
#' @param obase string with the basename of the output files.
#' @param date, STRING - Start date (format YYYY-MM-DD)
#' @param time, STRING - Start time (format hh:mm:ss)
#' @param inc, STRING - Optional increment (seconds, minutes, hours, days, months, years) [default: 0hour]
#' @param n, INTEGER - Number of timesteps from one timestep to the next
#'
#' @export
cdo_inttime <- function(ifile, date = NULL, time = NULL, inc = NULL, n = NULL, ofile = NULL) {
  cdo(operator = operators$inttime,
      input = list(ifile),
      params = list(date = date, time = time, inc = inc, n = n),
      output = ofile
  )
}
