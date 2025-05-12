## This file was created automatically, do not edit by hand.
#' Frost days index per time period
#'
#' Let infile be a time series of the daily minimum temperature TN, then the number of days where TN &lt; 0 °C is counted. Note that TN have to be given in units of Kelvin. Parameter is a comma-separated list of &quot;key=value&quot; pairs. 
#'
#' @details
#'     eca_fd     Frost days index per time period
#'                The operator counts over the entire time series.
#'                The date information of a timestep in outfile is the date of
#'                the last contributing timestep in infile.
#'     etccdi_fd  Frost days index per time period
#'                The default output frequency is yearly.
#'                The date information of a timestep in outfile is the mid of
#'                the frequency interval.
#' 
#'
#' 
#'
#' @name ecafd
NULL
