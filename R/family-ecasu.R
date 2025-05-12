## This file was created automatically, do not edit by hand.
#' Summer days index per time period
#'
#' Let infile be a time series of the daily maximum temperature TX, then the number of days where TX &gt; T is counted. The number T is an optional parameter with default T = 25°C. Note that TX have to be given in units of Kelvin, whereas T have to be given in degrees Celsius. Parameter is a comma-separated list of &quot;key=values&quot; pairs. 
#'
#' @details
#'     eca_su     Summer days index per time period
#'                The operator counts over the entire time series.
#'                The date information of a timestep in outfile is the date of
#'                the last contributing timestep in infile.
#'     etccdi_su  Summer days index per time period
#'                The default output frequency is yearly.
#'                The date information of a timestep in outfile is the mid of
#'                the frequency interval.
#' 
#'
#' 
#'
#' @name ecasu
NULL
