# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Multiyear monthly percentile values
#'
#' This operator writes a certain percentile of each month of year in infile1 to outfile. The algorithm uses histograms with minimum and maximum bounds given in infile2 and infile3, respectively. The default number of histogram bins is 101. The default can be overridden by setting the environment variable CDO_PCTL_NBINS to a different value. The files infile2 and infile3 should be the result of corresponding ymonmin and ymonmax operations, respectively. The date information in an output field is the date of the last contributing input field.  o(01,x) = pth percentile \{i(t,x), month(i(t)) = 01\} ... o(12,x) = pth percentile \{i(t,x), month(i(t)) = 12\} 
#'
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
#' @name ymonpctl
NULL
