## This file was created automatically, do not edit by hand.
#' Simple daily intensity index per time period
#'
#' Let infile be a time series of the daily precipitation amount RR, then the mean precipitation amount at wet days (RR &gt;= R) is written to outfile. R is an optional parameter with default R = 1 mm. The date information of a timestep in outfile is the date of the last contributing timestep in infile. 
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
#' @name ecasdii
NULL
