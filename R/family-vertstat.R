# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Vertical statistics
#'
#' This module computes statistical values over all levels of the input variables. According to chosen operator the vertical minimum, maximum, range, sum, average, variance or standard deviation is written to outfile. 
#'
#' @details
#'     vertmin    Vertical minimum
#'                For every gridpoint the minimum over all levels is computed.
#'     vertmax    Vertical maximum
#'                For every gridpoint the maximum over all levels is computed.
#'     vertrange  Vertical range
#'                For every gridpoint the range over all levels is computed.
#'     vertsum    Vertical sum
#'                For every gridpoint the sum over all levels is computed.
#'     vertmean   Vertical mean
#'                For every gridpoint the layer weighted mean over all levels is computed.
#'     vertavg    Vertical average
#'                For every gridpoint the layer weighted average over all levels is computed.
#'     vertstd    Vertical standard deviation
#'                For every gridpoint the standard deviation over all levels is computed. Normalize by n.
#'     vertstd1   Vertical standard deviation (n-1)
#'                For every gridpoint the standard deviation over all levels is computed. Normalize by (n-1).
#'     vertvar    Vertical variance
#'                For every gridpoint the variance over all levels is computed. Normalize by n.
#'     vertvar1   Vertical variance (n-1)
#'                For every gridpoint the variance over all levels is computed. Normalize by (n-1).
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
#' @name vertstat
NULL
