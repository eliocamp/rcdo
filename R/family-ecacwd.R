## This file was created automatically, do not edit by hand.
#' Consecutive wet days index per time period
#'
#' Let infile be a time series of the daily precipitation amount RR, then the largest number of consecutive days where RR is at least R is counted. R is an optional parameter with default R = 1 mm. A further output variable is the number of wet periods of more than N days. Parameter is a comma-separated list of &quot;key=values&quot; pairs. 
#'
#' @details
#'     eca_cwd     Consecutive wet days index per time period
#'                 The operator counts over the entire time series.
#'                 The date information of a timestep in outfile is the date of
#'                 the last contributing timestep in infile.
#'     etccdi_cwd  Consecutive wet days index per time period
#'                 The default output frequency is yearly.
#'                 Periods within overlapping years are accounted for the first year.
#'                 The date information of a timestep in outfile is the mid of
#'                 the frequency interval.
#' 
#'
#' 
#'
#' @name ecacwd
NULL
