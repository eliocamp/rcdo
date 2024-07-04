## This file was created automatically, do not edit by hand.
#' Coldspell days index wrt 10th percentile of reference period
#'
#' Let infile1 be a time series of the daily mean temperature TG, and infile2 be the 10th percentile TGn10 of daily mean temperatures for any period used as reference. Then counted is the number of days where, in intervals of at least nday consecutive days, TG &lt; TGn10. The number nday is an optional parameter with default nday = 6. A further output variable is the number of cold-spell periods longer than or equal to nday days. TGn10 is calculated as the 10th percentile of daily mean temperatures of a five day window centred on each calendar day of a given climate reference period. Note that both TG and TGn10 have to be given in the same units. 
#'
#' @details
#'     eca_cwfi     Cold-spell days index wrt 10th percentile of reference period
#'                  The operator counts over the entire time series.
#'                  The date information of a timestep in outfile is the date of
#'                  the last contributing timestep in infile.
#'     etccdi_csdi  Cold-spell duration index
#'                  The default output frequency is yearly.
#'                  Periods within overlapping years are accounted for the first year.
#'                  The date information of a timestep in outfile is the mid of
#'                  the frequency interval.
#' 
#'
#' 
#'
#' @name ecacwfi
NULL
