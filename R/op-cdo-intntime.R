# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param date STRING - Start date (format YYYY-MM-DD)
#' @param time STRING - Start time (format hh:mm:ss)
#' @param inc STRING - Optional increment (seconds, minutes, hours, days, months, years) \[default: 0hour\]
#' @param n INTEGER - Number of timesteps from one timestep to the next
#'
#' @export
#' @rdname inttime
cdo_intntime <- function(ifile, date = NULL, time = NULL, inc = NULL, n = NULL, ofile = NULL) {
  cdo(operator = operators$intntime,
      input = list(ifile),
      params = list(date = date, time = time, inc = inc, n = n),
      output = c(ofile)
  )
}
