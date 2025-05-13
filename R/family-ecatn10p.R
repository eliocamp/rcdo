## This file was created automatically, do not edit by hand.
#' Cold nights percent wrt 10th percentile of reference period
#'
#' Let infile1 be a time serie of the daily minimum temperature TN, and infile2 be the 10th percentile TNn10 of daily minimum temperatures for any period used as reference. Then the percentage of time where TN &lt; TNn10 is calculated. TNn10 is calculated as the 10th percentile of daily minimum temperatures of a five day window centred on each calendar day of a given climate reference period. Note that both TN and TNn10 have to be given in the same units. The date information of a timestep in outfile is the date of the last contributing timestep in infile1.
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
#' @name ecatn10p
NULL
