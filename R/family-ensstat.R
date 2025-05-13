## This file was created automatically, do not edit by hand.
#' Statistical values over an ensemble
#'
#' This module computes statistical values over an ensemble of input files. Depending on the chosen operator, the minimum, maximum, range, sum, average, standard deviation, variance, skewness, kurtosis, median or a certain percentile over all input files is written to outfile. All input files need to have the same structure with the same variables. The date information of a timestep in outfile is the date of the first input file. 
#'
#' @details
#'     ensmin     Ensemble minimum
#'                o(t,x) = min\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     ensmax     Ensemble maximum
#'                o(t,x) = max\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     ensrange   Ensemble range
#'                o(t,x) = range\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     enssum     Ensemble sum
#'                o(t,x) = sum\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     ensmean    Ensemble mean
#'                o(t,x) = mean\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     ensavg     Ensemble average
#'                o(t,x) = avg\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     ensstd     Ensemble standard deviation
#'                Normalize by n.
#'                
#'                o(t,x) = std\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     ensstd1    Ensemble standard deviation (n-1)
#'                Normalize by (n-1).
#'                
#'                o(t,x) = std1\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     ensvar     Ensemble variance
#'                Normalize by n.
#'                
#'                o(t,x) = var\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     ensvar1    Ensemble variance (n-1)
#'                Normalize by (n-1).
#'                
#'                o(t,x) = var1\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     ensskew    Ensemble skewness
#'                o(t,x) = skew\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     enskurt    Ensemble kurtosis
#'                o(t,x) = kurt\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     ensmedian  Ensemble median
#'                o(t,x) = median\{i1(t,x), i2(t,x), ..., in(t,x)\}
#'     enspctl    Ensemble percentiles
#'                o(t,x) = pth percentile \{i1(t,x), i2(t,x), ..., in(t,x)\}
#' 
#'
#' @section Note: 
#' Operators of this module need to open all input files simultaneously. The maximum number of open files depends on the operating system!
#'
#' @returns
#' Operators that output one or more files return a character vector to the
#' output files.
#'
#' Operators that output an indefinite number of files return a string with the
#' basename of the files.
#'
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name ensstat
NULL
