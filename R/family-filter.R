## This file was created automatically, do not edit by hand.
#' Time series filtering
#'
#' This module takes the time series for each gridpoint in infile and (fast fourier) transforms it into the frequency domain. According to the particular operator and its parameters certain frequencies are filtered (set to zero) in the frequency domain and the spectrum is (inverse fast fourier) transformed back into the time domain. To determine the frequency the time-axis of infile is used. (Data should have a constant time increment since this assumption applies for transformation. However, the time increment has to be different from zero.) All frequencies given as parameter are interpreted per year. This is done by the assumption of a 365-day calendar. Consequently if you want to perform multiyear-filtering accurately you have to delete the 29th of February. If your infile has a 360 year calendar the frequency parameters fmin respectively fmax should be multiplied with a factor of 360/365 in order to obtain accurate results. For the set up of a frequency filter the frequency parameters have to be adjusted to a frequency in the data. Here fmin is rounded down and fmax is always rounded up. Consequently it is possible to use bandpass with fmin=fmax without getting a zero-field for outfile. Hints for efficient usage: - to get reliable results the time-series has to be detrended (cdo detrend) - the lowest frequency greater zero that can be contained in infile is 1/(N*dT), - the greatest frequency is 1/(2dT) (Nyquist frequency), with N the number of timesteps and dT the time increment of infile in years.  Missing value support for operators in this module is not implemented, yet! 
#'
#' @details
#'     bandpass  Bandpass filtering
#'               Bandpass filtering (pass for frequencies between fmin and fmax).
#'               Suppresses all variability outside the frequency range specified by [fmin,fmax].
#'     lowpass   Lowpass filtering
#'               Lowpass filtering (pass for frequencies lower than fmax).
#'               Suppresses all variability with frequencies greater than fmax. 
#'     highpass  Highpass filtering
#'               Highpass filtering (pass for frequencies greater than fmin). 
#'               Suppresses all variabilty with frequencies lower than fmin. 
#' 
#'
#' @section Note: 
#' For better performace of these operators use the CDO configure option --with-fftw3.
#'
#' @name filter
NULL
