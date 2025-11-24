# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Running percentile values
#'
#' This module computes running percentiles over a selected number of timesteps in infile. The time of outfile is determined by the time in the middle of all contributing timesteps of infile. This can be change with the CDO option --timestat_date &lt;first|middle|last&gt;.  o(t+(nts-1)/2,x) = pth percentile \{i(t,x), i(t+1,x), ..., i(t+nts-1,x)\} 
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
#' @name runpctl
NULL
