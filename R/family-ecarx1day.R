## This file was created automatically, do not edit by hand.
#' Highest one day precipitation amount per time period
#'
#' Let infile be a time series of the daily precipitation amount RR, then the maximum of RR is written to outfile. If the optional parameter mode is set to 'm' the maximum daily precipitation amounts are determined for each month. Parameter is a comma-separated list of \&quot;key=values\&quot; pairs. 
#'
#' @details
#'     eca_rx1day     Highest one day precipitation amount per time period
#'                    The operator counts over the entire time series.
#'                    The date information of a timestep in outfile is the date of
#'                    the last contributing timestep in infile.
#'     etccdi_rx1day  Maximum 1-day Precipitation
#'                    The default output frequency is yearly.
#'                    The date information of a timestep in outfile is the mid of
#'                    the frequency interval.
#' 
#'
#' 
#'
#' @name ecarx1day
NULL
