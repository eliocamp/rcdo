# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Statistical values over a field
#'
#' This module computes statistical values of all input fields. A field is a horizontal layer of a data variable. Depending on the chosen operator, the minimum, maximum, range, sum, integral, average, standard deviation, variance, skewness, kurtosis, median or a certain percentile of the field is written to outfile. 
#'
#' @details
#'     fldmin     Field minimum
#'                For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = min\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'     fldmax     Field maximum
#'                For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = max\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'     fldrange   Field range
#'                For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = range\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'     fldsum     Field sum
#'                For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = sum\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'     fldint     Field integral
#'                For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = sum\{i(t,x')*cellarea(x'), x_1&lt;x'&lt;=x_n\}
#'     fldmean    Field mean
#'                For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = mean\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'                weighted by area weights obtained by the input field.
#'     fldavg     Field average
#'                For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = avg\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'                weighted by area weights obtained by the input field.
#'     fldstd     Field standard deviation
#'                Normalize by n. For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = std\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'                weighted by area weights obtained by the input field.
#'     fldstd1    Field standard deviation (n-1)
#'                Normalize by (n-1). For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = std1\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'                weighted by area weights obtained by the input field.
#'     fldvar     Field variance
#'                Normalize by n. For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = var\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'                weighted by area weights obtained by the input field.
#'     fldvar1    Field variance (n-1)
#'                Normalize by (n-1). For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = var1\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'                weighted by area weights obtained by the input field.
#'     fldskew    Field skewness
#'                For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = skew\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'     fldkurt    Field kurtosis
#'                For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = kurt\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'     fldmedian  Field median
#'                For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = median\{i(t,x'), x_1&lt;x'&lt;=x_n\}
#'     fldcount   Field count
#'                Number of non-missing values of the field.
#'     fldpctl    Field percentiles
#'                For every gridpoint x_1, ..., x_n of the same field it is:
#'                
#'                o(t,1) = pth percentile \{i(t,x'), x_1&lt;x'&lt;=x_n\}
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
#' @name fldstat
NULL
