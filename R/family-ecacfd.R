# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Consecutive frost days index per time period
#'
#' Let infile be a time series of the daily minimum temperature TN, then the largest number of consecutive days where TN &lt; 0 °C is counted. Note that TN have to be given in units of Kelvin. A further output variable is the number of frost periods of more than N days. The date information of a timestep in outfile is the date of the last contributing timestep in infile. 
#'
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
#' @name ecacfd
NULL
