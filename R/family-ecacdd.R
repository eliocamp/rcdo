# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Consecutive dry days index per time period
#'
#' Let infile be a time series of the daily precipitation amount RR, then the largest number of consecutive days where RR is less than R is counted. R is an optional parameter with default R = 1 mm. A further output variable is the number of dry periods of more than N days. Parameter is a comma-separated list of &quot;key=values&quot; pairs. 
#'
#' @details
#'     eca_cdd     Consecutive dry days index per time period
#'                 The operator counts over the entire time series.
#'                 The date information of a timestep in outfile is the date of
#'                 the last contributing timestep in infile.
#'     etccdi_cdd  Consecutive dry days index per time period
#'                 The default output frequency is yearly.
#'                 Periods within overlapping years are accounted for the first year.
#'                 The date information of a timestep in outfile is the mid of
#'                 the frequency interval.
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
#' Operators that don't return filenames return a character vector with the
#' string output.
#' @name ecacdd
NULL
