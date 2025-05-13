## This file was created automatically, do not edit by hand.
#' Multiyear daily statistics
#'
#' This module computes statistical values of each day of year. Depending on the chosen operator the minimum, maximum, range, sum, average, variance or standard deviation of each day of year in infile is written to outfile. The date information in an output field is the date of the last contributing input field. 
#'
#' @details
#'     ydaymin    Multi-year daily minimum
#'                o(001,x) = min\{i(t,x), day(i(t)) = 001\}
#'                                 ...
#'                o(366,x) = min\{i(t,x), day(i(t)) = 366\}
#'     ydaymax    Multi-year daily maximum
#'                o(001,x) = max\{i(t,x), day(i(t)) = 001\}
#'                                 ...
#'                o(366,x) = max\{i(t,x), day(i(t)) = 366\}
#'     ydayrange  Multi-year daily range
#'                o(001,x) = range\{i(t,x), day(i(t)) = 001\}
#'                                 ...
#'                o(366,x) = range\{i(t,x), day(i(t)) = 366\}
#'     ydaysum    Multi-year daily sum
#'                o(001,x) = sum\{i(t,x), day(i(t)) = 001\}
#'                                 ...
#'                o(366,x) = sum\{i(t,x), day(i(t)) = 366\}
#'     ydaymean   Multi-year daily mean
#'                o(001,x) = mean\{i(t,x), day(i(t)) = 001\}
#'                                 ...
#'                o(366,x) = mean\{i(t,x), day(i(t)) = 366\}
#'     ydayavg    Multi-year daily average
#'                o(001,x) = avg\{i(t,x), day(i(t)) = 001\}
#'                                 ...
#'                o(366,x) = avg\{i(t,x), day(i(t)) = 366\}
#'     ydaystd    Multi-year daily standard deviation
#'                Normalize by n.
#'                
#'                o(001,x) = std\{i(t,x), day(i(t)) = 001\}
#'                                 ...
#'                o(366,x) = std\{i(t,x), day(i(t)) = 366\}
#'     ydaystd1   Multi-year daily standard deviation (n-1)
#'                Normalize by (n-1).
#'                
#'                o(001,x) = std1\{i(t,x), day(i(t)) = 001\}
#'                                 ...
#'                o(366,x) = std1\{i(t,x), day(i(t)) = 366\}
#'     ydayvar    Multi-year daily variance
#'                Normalize by n.
#'                
#'                o(001,x) = var\{i(t,x), day(i(t)) = 001\}
#'                                 ...
#'                o(366,x) = var\{i(t,x), day(i(t)) = 366\}
#'     ydayvar1   Multi-year daily variance (n-1)
#'                Normalize by (n-1).
#'                
#'                o(001,x) = var1\{i(t,x), day(i(t)) = 001\}
#'                                 ...
#'                o(366,x) = var1\{i(t,x), day(i(t)) = 366\}
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
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name ydaystat
NULL
