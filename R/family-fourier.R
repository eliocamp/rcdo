## This file was created automatically, do not edit by hand.
#' Fourier transformation
#'
#' The fourier operator performs the fourier transformation or the inverse fourier transformation of all input fields. If the number of timesteps is a power of 2 then the algorithm of the Fast Fourier Transformation (FFT) is used.   If the input stream infile consists only of complex fields, then the fields of outfile, computed by cdo -f ext fourier,1 -fourier,-1 infile outfile are the same than that of infile. For real input files see function retocomplex. 
#'
#' 
#'
#' @section Note: 
#' Complex numbers can only be stored in NetCDF4 and EXTRA format.
#'
#' @name fourier
NULL
