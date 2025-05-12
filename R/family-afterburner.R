## This file was created automatically, do not edit by hand.
#' ECHAM standard post processor
#'
#' The &quot;afterburner&quot; is the standard post processor for ECHAM GRIB and NetCDF data which provides the following operations:  - Extract specified variables and levels - Compute derived variables - Transform spectral data to Gaussian grid representation - Vertical interpolation to pressure levels - Compute temporal means  This operator reads selection parameters as namelist from stdin. Use the UNIX redirection &quot;&lt;namelistfile&quot; to read the namelist from file.  The input files can't be combined with other CDO operators because of an optimized reader for this operator. 
#'
#' 
#'
#' 
#'
#' @name afterburner
NULL
