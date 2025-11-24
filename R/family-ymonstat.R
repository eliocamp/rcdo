# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Multiyear monthly statistics
#'
#' This module computes statistical values of each month of year. Depending on the chosen operator the minimum, maximum, range, sum, average, variance or standard deviation of each month of year in infile is written to outfile. The date information in an output field is the date of the last contributing input field. This can be change with the CDO option --timestat_date &lt;first|middle|last&gt;. 
#'
#' @details
#'     ymonmin    Multi-year monthly minimum
#'                o(01,x) = min\{i(t,x), month(i(t)) = 01\}
#'                                 ...
#'                o(12,x) = min\{i(t,x), month(i(t)) = 12\}
#'     ymonmax    Multi-year monthly maximum
#'                o(01,x) = max\{i(t,x), month(i(t)) = 01\}
#'                                 ...
#'                o(12,x) = max\{i(t,x), month(i(t)) = 12\}
#'     ymonrange  Multi-year monthly range
#'                o(01,x) = range\{i(t,x), month(i(t)) = 01\}
#'                                 ...
#'                o(12,x) = range\{i(t,x), month(i(t)) = 12\}
#'     ymonsum    Multi-year monthly sum
#'                o(01,x) = sum\{i(t,x), month(i(t)) = 01\}
#'                                 ...
#'                o(12,x) = sum\{i(t,x), month(i(t)) = 12\}
#'     ymonmean   Multi-year monthly mean
#'                o(01,x) = mean\{i(t,x), month(i(t)) = 01\}
#'                                 ...
#'                o(12,x) = mean\{i(t,x), month(i(t)) = 12\}
#'     ymonavg    Multi-year monthly average
#'                o(01,x) = avg\{i(t,x), month(i(t)) = 01\}
#'                                 ...
#'                o(12,x) = avg\{i(t,x), month(i(t)) = 12\}
#'     ymonstd    Multi-year monthly standard deviation
#'                Normalize by n.
#'                
#'                o(01,x) = std\{i(t,x), month(i(t)) = 01\}
#'                                 ...
#'                o(12,x) = std\{i(t,x), month(i(t)) = 12\}
#'     ymonstd1   Multi-year monthly standard deviation (n-1)
#'                Normalize by (n-1).
#'                
#'                o(01,x) = std1\{i(t,x), month(i(t)) = 01\}
#'                                 ...
#'                o(12,x) = std1\{i(t,x), month(i(t)) = 12\}
#'     ymonvar    Multi-year monthly variance
#'                Normalize by n.
#'                
#'                o(01,x) = var\{i(t,x), month(i(t)) = 01\}
#'                                 ...
#'                o(12,x) = var\{i(t,x), month(i(t)) = 12\}
#'     ymonvar1   Multi-year monthly variance (n-1)
#'                Normalize by (n-1).
#'                
#'                o(01,x) = var1\{i(t,x), month(i(t)) = 01\}
#'                                 ...
#'                o(12,x) = var1\{i(t,x), month(i(t)) = 12\}
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
#' @name ymonstat
NULL
