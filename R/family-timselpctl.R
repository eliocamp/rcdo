## This file was created automatically, do not edit by hand.
#' Time range percentile values
#'
#' This operator computes percentile values over a selected number of timesteps in infile1. The algorithm uses histograms with minimum and maximum bounds given in infile2 and infile3, respectively. The default number of histogram bins is 101. The default can be overridden by setting the environment variable CDO_PCTL_NBINS to a different value. The files infile2 and infile3 should be the result of corresponding timselmin and timselmax operations, respectively. The time of outfile is determined by the time in the middle of all contributing timesteps of infile1. This can be change with the CDO option --timestat_date &lt;first|middle|last&gt;. For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:  o(t,x) = pth percentile \{i(t',x), t1 &lt; t' &lt;= tn\} 
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
#' @name timselpctl
NULL
