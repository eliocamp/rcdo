## This file was created automatically, do not edit by hand.
#' Statistical values over all variables
#'
#' This module computes statistical values over all variables for each timestep. Depending on the chosen operator the minimum, maximum, range, sum, average, variance or standard deviation is written to outfile. All input variables need to have the same gridsize and the same number of levels. 
#'
#' @details
#'     varsmin    Variables minimum
#'                For every timestep the minimum over all variables is computed.
#'     varsmax    Variables maximum
#'                For every timestep the maximum over all variables is computed.
#'     varsrange  Variables range
#'                For every timestep the range over all variables is computed.
#'     varssum    Variables sum
#'                For every timestep the sum over all variables is computed.
#'     varsmean   Variables mean
#'                For every timestep the mean over all variables is computed.
#'     varsavg    Variables average
#'                For every timestep the average over all variables is computed.
#'     varsstd    Variables standard deviation
#'                For every timestep the standard deviation over all variables is computed. Normalize by n.
#'     varsstd1   Variables standard deviation (n-1)
#'                For every timestep the standard deviation over all variables is computed. Normalize by (n-1).
#'     varsvar    Variables variance
#'                For every timestep the variance over all variables is computed. Normalize by n.
#'     varsvar1   Variables variance (n-1)
#'                For every timestep the variance over all variables is computed. Normalize by (n-1).
#'
#' 
#'
#' @name varsstat
NULL
