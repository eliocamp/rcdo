## This file was created automatically, do not edit by hand.
#' Detrend time series
#'
#' Every time series in infile is linearly detrended. For every field element x only those timesteps t belong to the sample S(x), which have i(t,x) NE miss. It is assumed that all timesteps are equidistant, if this is not the case set the parameter equal=false. 
#'
#' 
#'
#' @section Note: 
#' This operator has to keep the fields of all timesteps concurrently in the memory. If not enough memory is available use the operators trend and subtrend.
#'
#' @name detrend
NULL
