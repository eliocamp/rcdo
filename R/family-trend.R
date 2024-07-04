## This file was created automatically, do not edit by hand.
#' Trend of time series
#'
#' The values of the input file infile are assumed to be distributed as N(a+b*t,S^2) with unknown a, b and S^2. This operator estimates the parameter a and b. For every field element x only those timesteps t belong to the sample S(x), which have i(t,x) NE miss. Thus the estimation for a is stored in outfile1 and that for b is stored in outfile2. To subtract the trend from the data see operator subtrend. It is assumed that all timesteps are equidistant, if this is not the case set the parameter equal=false. 
#'
#' 
#'
#' 
#'
#' @name trend
NULL
