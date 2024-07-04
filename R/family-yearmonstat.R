## This file was created automatically, do not edit by hand.
#' Yearly mean from monthly data
#'
#' This operator computes the yearly mean of a monthly time series. Each month is weighted with the number of days per month. The time of outfile is determined by the time in the middle of all contributing timesteps of infile.  For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:  o(t,x) = mean{i(t',x), t_1&lt;t'&lt;=t_n} 
#'
#' 
#'
#' 
#'
#' @name yearmonstat
NULL
