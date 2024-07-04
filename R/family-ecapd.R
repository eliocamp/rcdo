## This file was created automatically, do not edit by hand.
#' Precipitation days index per time period
#'
#' Let infile be a time series of the daily precipitation amount RR in [mm] (or alternatively in [kg m-2]), then the number of days where RR is at least x mm is counted. eca_r10mm and eca_r20mm are specific ECA operators with a daily precipitation amount of 10 and 20 mm respectively. The date information of a timestep in outfile is the date of the last contributing timestep in infile except for the etccdi operator. Parameter is a comma-separated list of \&quot;key=values\&quot; pairs. 
#'
#' @details
#'     eca_pd       Precipitation days index per time period
#'                  Generic ECA operator with daily precipitation sum exceeding x mm.
#'     eca_r10mm    Heavy precipitation days index per time period
#'                  Specific ECA operator with daily precipitation sum exceeding 10 mm.
#'     eca_r20mm    Very heavy precipitation days index per time period
#'                  Specific ECA operator with daily precipitation sum exceeding 20 mm.
#'     etccdi_r1mm  Precipitation days index per time period
#'                  The default output frequency is yearly.
#'                  The date information of a timestep in outfile is the mid of
#'                  the frequency interval.
#' 
#'
#' @section Note: 
#' Precipitation rates in [mm/s] have to be converted to precipitation amounts (multiply with 86400 s). Apart from metadata information the result of eca_pd,1 and eca_rr1 is the same.
#'
#' @name ecapd
NULL
