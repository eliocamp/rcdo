## This file was created automatically, do not edit by hand.
#' Tropical nights index per time period
#'
#' Let infile be a time series of the daily minimum temperature TN, then the number of days where TN &gt; T is counted. The number T is an optional parameter with default T = 20°C. Note that TN have to be given in units of Kelvin, whereas T have to be given in degrees Celsius. Parameter is a comma-separated list of &quot;key=values&quot; pairs. 
#'
#' @details
#'     eca_tr     Tropical nights index per time period
#'                The operator counts over the entire time series.
#'                The date information of a timestep in outfile is the date of
#'                the last contributing timestep in infile.
#'     etccdi_tr  Tropical nights index per time period
#'                The default output frequency is yearly.
#'                The date information of a timestep in outfile is the mid of
#'                the frequency interval.
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
#' @name ecatr
NULL
