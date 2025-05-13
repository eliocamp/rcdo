## This file was created automatically, do not edit by hand.
#' Heat wave duration index wrt mean of reference period
#'
#' Let infile1 be a time series of the daily maximum temperature TX, and let infile2 be the mean TXnorm of daily maximum temperatures for any period used as reference. Then counted is the number of days where, in intervals of at least nday consecutive days, TX &gt; TXnorm + T. The numbers nday and T are optional parameters with default nday = 6 and T = 5°C. A further output variable is the number of heat waves longer than or equal to nday days. TXnorm is calculated as the mean of maximum temperatures of a five day window centred on each calendar day of a given climate reference period. Note that both TX and TXnorm have to be given in the same units. The date information of a timestep in outfile is the date of the last contributing timestep in infile1. 
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
#' @name ecahwdi
NULL
