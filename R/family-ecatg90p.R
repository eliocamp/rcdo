# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Warm days percent wrt 90th percentile of reference period
#'
#' Let infile1 be a time series of the daily mean temperature TG, and infile2 be the 90th percentile TGn90 of daily mean temperatures for any period used as reference. Then the percentage of time where TG &gt; TGn90 is calculated. TGn90 is calculated as the 90th percentile of daily mean temperatures of a five day window centred on each calendar day of a given climate reference period. Note that both TG and TGn90 have to be given in the same units. The date information of a timestep in outfile is the date of the last contributing timestep in infile1.
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
#' @name ecatg90p
NULL
