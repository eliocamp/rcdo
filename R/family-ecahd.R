## This file was created automatically, do not edit by hand.
#' Heating degree days per time period
#'
#' Let infile be a time series of the daily mean temperature TG, then the heating degree days are defined as the sum of T1 - TG, where only values TG &lt; T2 are considered. If T1 and T2 are omitted, a temperature of 17°C is used for both parameters. If only T1 is given, T2 is set to T1. Note that TG have to be given in units of kelvin, whereas T1 and T2 have to be given in degrees Celsius. The date information of a timestep in outfile is the date of the last contributing timestep in infile. 
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
#' @name ecahd
NULL
