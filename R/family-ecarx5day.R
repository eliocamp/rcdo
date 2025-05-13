## This file was created automatically, do not edit by hand.
#' Highest fiveday precipitation amount per time period
#'
#' Let infile be a time series of 5-day precipitation totals RR, then the maximum of RR is written to outfile. A further output variable is the number of 5 day period with precipitation totals greater than x mm, where x is an optional parameter with default x = 50 mm. Parameter is a comma-separated list of &quot;key=values&quot; pairs. 
#'
#' @details
#'     eca_rx5day     Highest five-day precipitation amount per time period
#'                    The operator counts over the entire time series.
#'                    The date information of a timestep in outfile is the date of
#'                    the last contributing timestep in infile.
#'     etccdi_rx5day  Highest five-day precipitation amount per time period
#'                    The default output frequency is yearly.
#'                    Periods within overlapping years are accounted for the first year.
#'                    The date information of a timestep in outfile is the mid of
#'                    the frequency interval.
#' 
#'
#' 
#'
#' @returns
#' Operators that output one or more files return a character vector to the
#' output files.
#'
#' Operators that output an indefinite number of files return a string with the
#' basename of the files.
#'
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name ecarx5day
NULL
