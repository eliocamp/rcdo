## This file was created automatically, do not edit by hand.
#' Percentile values over all timesteps
#'
#' This operator computes percentiles over all timesteps in infile1. The algorithm uses histograms with minimum and maximum bounds given in infile2 and infile3, respectively. The default number of histogram bins is 101. The default can be overridden by defining the environment variable CDO_PCTL_NBINS. The files infile2 and infile3 should be the result of corresponding timmin and timmax operations, respectively. The time of outfile is determined by the time in the middle of all contributing timesteps of infile1. This can be change with the CDO option --timestat_date &lt;first|middle|last&gt;.  o(1,x) = pth percentile \{i(t',x), t_1&lt;t'&lt;=t_n\} 
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
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name timpctl
NULL
