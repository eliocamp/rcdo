# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Ice days index per time period
#'
#' Let infile be a time series of the daily maximum temperature TX, then the number of days where TX &lt; 0 °C is counted. Note that TX have to be given in units of Kelvin. Parameter is a comma-separated list of &quot;key=values&quot; pairs. 
#'
#' @details
#'     eca_id     Ice days index per time period
#'                The operator counts over the entire time series.
#'                The date information of a timestep in outfile is the date of
#'                the last contributing timestep in infile.
#'     etccdi_id  Ice days index per time period
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
#' Operators that don't return filenames return a character vector with the
#' string output.
#' @name ecaid
NULL
