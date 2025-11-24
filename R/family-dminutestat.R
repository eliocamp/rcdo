# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Multiday by the minute statistics
#'
#' This module computes statistical values of each minute of day. Depending on the chosen operator the minimum, maximum, range, sum, average, variance or standard deviation of each minute of day in infile is written to outfile. The date information in an output field is the date of the last contributing input field. 
#'
#' @details
#'     dminutemin    Multi-day by the minute minimum
#'                   o(01,x) = min\{i(t,x), day(i(t)) = 01\}
#'                                    ...
#'                   o(1440,x) = min\{i(t,x), day(i(t)) = 1440\}
#'     dminutemax    Multi-day by the minute maximum
#'                   o(01,x) = max\{i(t,x), day(i(t)) = 01\}
#'                                    ...
#'                   o(1440,x) = max\{i(t,x), day(i(t)) = 1440\}
#'     dminuterange  Multi-day by the minute range
#'                   o(01,x) = range\{i(t,x), day(i(t)) = 01\}
#'                                    ...
#'                   o(1440,x) = range\{i(t,x), day(i(t)) = 1440\}
#'     dminutesum    Multi-day by the minute sum
#'                   o(01,x) = sum\{i(t,x), day(i(t)) = 01\}
#'                                    ...
#'                   o(1440,x) = sum\{i(t,x), day(i(t)) = 1440\}
#'     dminutemean   Multi-day by the minute mean
#'                   o(01,x) = mean\{i(t,x), day(i(t)) = 01\}
#'                                    ...
#'                   o(1440,x) = mean\{i(t,x), day(i(t)) = 1440\}
#'     dminuteavg    Multi-day by the minute average
#'                   o(01,x) = avg\{i(t,x), day(i(t)) = 01\}
#'                                    ...
#'                   o(1440,x) = avg\{i(t,x), day(i(t)) = 1440\}
#'     dminutestd    Multi-day by the minute standard deviation
#'                   Normalize by n.
#'                   
#'                   o(01,x) = std\{i(t,x), day(i(t)) = 01\}
#'                                    ...
#'                   o(1440,x) = std\{i(t,x), day(i(t)) = 1440\}
#'     dminutestd1   Multi-day by the minute standard deviation (n-1)
#'                   Normalize by (n-1).
#'                   
#'                   o(01,x) = std1\{i(t,x), day(i(t)) = 01\}
#'                                    ...
#'                   o(1440,x) = std1\{i(t,x), day(i(t)) = 1440\}
#'     dminutevar    Multi-day by the minute variance
#'                   Normalize by n.
#'                   
#'                   o(01,x) = var\{i(t,x), day(i(t)) = 01\}
#'                                    ...
#'                   o(1440,x) = var\{i(t,x), day(i(t)) = 1440\}
#'     dminutevar1   Multi-day by the minute variance (n-1)
#'                   Normalize by (n-1).
#'                   
#'                   o(01,x) = var1\{i(t,x), day(i(t)) = 01\}
#'                                    ...
#'                   o(1440,x) = var1\{i(t,x), day(i(t)) = 1440\}
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
#' @name dminutestat
NULL
