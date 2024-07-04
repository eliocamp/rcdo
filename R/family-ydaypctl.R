## This file was created automatically, do not edit by hand.
#' Multiyear daily percentile values
#'
#' This operator writes a certain percentile of each day of year in infile1 to outfile. The algorithm uses histograms with minimum and maximum bounds given in infile2 and infile3, respectively. The default number of histogram bins is 101. The default can be overridden by setting the environment variable CDO_PCTL_NBINS to a different value. The files infile2 and infile3 should be the result of corresponding ydaymin and ydaymax operations, respectively. The date information in an output field is the date of the last contributing input field.  o(001,x) = pth percentile \{i(t,x), day(i(t)) = 001\} ... o(366,x) = pth percentile \{i(t,x), day(i(t)) = 366\} 
#'
#' 
#'
#' 
#'
#' @name ydaypctl
NULL
