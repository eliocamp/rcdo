## This file was created automatically, do not edit by hand.
#' Multiyear seasonal percentile values
#'
#' This operator writes a certain percentile of each season in infile1 to outfile. The algorithm uses histograms with minimum and maximum bounds given in infile2 and infile3, respectively. The default number of histogram bins is 101. The default can be overridden by setting the environment variable CDO_PCTL_NBINS to a different value. The files infile2 and infile3 should be the result of corresponding yseasmin and yseasmax operations, respectively. The date information in an output field is the date of the last contributing input field.  o(1,x) = pth percentile {i(t,x), month(i(t)) = 12, 01, 02} o(2,x) = pth percentile {i(t,x), month(i(t)) = 03, 04, 05} o(3,x) = pth percentile {i(t,x), month(i(t)) = 06, 07, 08} o(4,x) = pth percentile {i(t,x), month(i(t)) = 09, 10, 11} 
#'
#' 
#'
#' 
#'
#' @name yseaspctl
NULL
