## This file was created automatically, do not edit by hand.
#' Consecutive summer days index per time period
#'
#' Let infile be a time series of the daily maximum temperature TX, then the largest number of consecutive days where TX &gt; T is counted. The number T is an optional parameter with default T = 25°C. Note that TN have to be given in units of Kelvin, whereas T have to be given in degrees Celsius. A further output variable is the number of summer periods of more than N days. The date information of a timestep in outfile is the date of the last contributing timestep in infile. 
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
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name ecacsu
NULL
