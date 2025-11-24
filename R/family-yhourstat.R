# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Multiyear hourly statistics
#'
#' This module computes statistical values of each hour and day of year. Depending on the chosen operator the minimum, maximum, range, sum, average, variance or standard deviation of each hour and day of year in infile is written to outfile. The date information in an output field is the date of the last contributing input field. 
#'
#' @details
#'     yhourmin    Multi-year hourly minimum
#'                 o(0001,x) = min\{i(t,x), day(i(t)) = 0001\}
#'                                  ...
#'                 o(8784,x) = min\{i(t,x), day(i(t)) = 8784\}
#'     yhourmax    Multi-year hourly maximum
#'                 o(0001,x) = max\{i(t,x), day(i(t)) = 0001\}
#'                                  ...
#'                 o(8784,x) = max\{i(t,x), day(i(t)) = 8784\}
#'     yhourrange  Multi-year hourly range
#'                 o(0001,x) = range\{i(t,x), day(i(t)) = 0001\}
#'                                  ...
#'                 o(8784,x) = range\{i(t,x), day(i(t)) = 8784\}
#'     yhoursum    Multi-year hourly sum
#'                 o(0001,x) = sum\{i(t,x), day(i(t)) = 0001\}
#'                                  ...
#'                 o(8784,x) = sum\{i(t,x), day(i(t)) = 8784\}
#'     yhourmean   Multi-year hourly mean
#'                 o(0001,x) = mean\{i(t,x), day(i(t)) = 0001\}
#'                                  ...
#'                 o(8784,x) = mean\{i(t,x), day(i(t)) = 8784\}
#'     yhouravg    Multi-year hourly average
#'                 o(0001,x) = avg\{i(t,x), day(i(t)) = 0001\}
#'                                  ...
#'                 o(8784,x) = avg\{i(t,x), day(i(t)) = 8784\}
#'     yhourstd    Multi-year hourly standard deviation
#'                 Normalize by n.
#'                 
#'                 o(0001,x) = std\{i(t,x), day(i(t)) = 0001\}
#'                                  ...
#'                 o(8784,x) = std\{i(t,x), day(i(t)) = 8784\}
#'     yhourstd1   Multi-year hourly standard deviation (n-1)
#'                 Normalize by (n-1).
#'                 
#'                 o(0001,x) = std1\{i(t,x), day(i(t)) = 0001\}
#'                                  ...
#'                 o(8784,x) = std1\{i(t,x), day(i(t)) = 8784\}
#'     yhourvar    Multi-year hourly variance
#'                 Normalize by n.
#'                 
#'                 o(0001,x) = var\{i(t,x), day(i(t)) = 0001\}
#'                                  ...
#'                 o(8784,x) = var\{i(t,x), day(i(t)) = 8784\}
#'     yhourvar1   Multi-year hourly variance (n-1)
#'                 Normalize by (n-1).
#'                 
#'                 o(0001,x) = var1\{i(t,x), day(i(t)) = 0001\}
#'                                  ...
#'                 o(8784,x) = var1\{i(t,x), day(i(t)) = 8784\}
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
#' @name yhourstat
NULL
