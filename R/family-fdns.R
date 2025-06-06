## This file was created automatically, do not edit by hand.
#' Frost days where no snow index per time period
#'
#' Let infile1 be a time series of the daily minimum temperature TN and infile2 be a corresponding series of daily surface snow amounts. Then the number of days where TN &lt; 0 °C and the surface snow amount is less than 1 cm is counted. The temperature TN have to be given in units of Kelvin. The date information of a timestep in outfile is the date of the last contributing timestep in infile.
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
#' @name fdns
NULL
