## This file was created automatically, do not edit by hand.


#' Principal coefficients of EOFs
#' 
#' This module calculates the time series of the principal coefficients for given
#' EOF (empirical orthogonal functions) and data. Time steps in infile1 are
#' assumed to be the EOFs, time steps in infile2 are assumed to be the time
#' series. Note, that this operator calculates a non weighted dot product of the
#' fields in infile1 and infile2. For consistency set the environment variable
#' CDO_WEIGHT_MODE=off when using eof or eof3d.
#' 
#' @details
#'      eof         Calculate EOFs in spatial or time space
#'      eoftime     Calculate EOFs in time space
#'      eofspatial  Calculate EOFs in spatial space
#'      eof3d       Calculate 3-Dimensional EOFs in time space
#' 
#' @name Eofcoeff
NULL

#' @param infile1,infile2 input files.
#' @param obase preffix added to the output files.
#' @rdname Eofcoeff
#' @export
cdo_eofcoeff <- function(infile1, infile2, obase = NULL) {
  .new_step(operator = 'eofcoeff', 
            inputs = list(infile1), 
            outputs = c(obase), 
            n_inputs = 2,
            n_outputs = -1)
}
#' @param infile1,infile2 input files.
#' @param obase preffix added to the output files.
#' @rdname Eofcoeff
#' @export
cdo_eofcoeff <- function(infile1, infile2, obase = NULL) {
  .new_step(operator = 'eofcoeff', 
            inputs = list(infile2), 
            outputs = c(obase), 
            n_inputs = 2,
            n_outputs = -1)
}
