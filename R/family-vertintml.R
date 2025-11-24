# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Vertical interpolation
#'
#' Interpolates 3D variables on hybrid sigma pressure level to pressure or height levels. To calculate the pressure on model levels, the a and b coefficients defining the model levels and the surface pressure are required. The a and b coefficients are normally part of the model level data. If not available, the surface pressure can be derived from the logarithm of the surface pressure. To extrapolate the temperature, the surface geopotential is also needed. The geopotential height must be present at the hybrid layer interfaces (model half-layers)! All needed variables are identified by their GRIB1 code number or NetCDF CF standard name. Supported parameter tables are: WMO standard table number 2 and ECMWF local table number 128.  Name                       &amp; Units      &amp; GRIB1 code &amp; CF standard name log surface pressure     &amp;  Pa        &amp;  152       &amp; surface pressure         &amp;  Pa        &amp;  134       &amp;  surface_air_pressure air temperature          &amp;  K         &amp;  130       &amp;  air_temperature surface geopotential     &amp;  m2 s-2    &amp;  129       &amp;  surface_geopotential geopotential height      &amp;  m         &amp;  156       &amp;  geopotential_height  Use the alias  ml2plx/ml2hlx or the environment variable EXTRAPOLATE to extrapolate missing values. This operator requires all variables on the same horizontal grid. Missing values in the input data are not supported.  
#'
#' @details
#'     ml2pl  Model to pressure level interpolation
#'            Interpolates 3D variables on hybrid sigma pressure level to pressure level.
#'     ml2hl  Model to height level interpolation
#'            Interpolates 3D variables on hybrid sigma pressure level to height level.
#'            The procedure is the same as for the operator ml2pl except for
#'            the pressure levels being calculated from the heights by:
#'            plevel = 101325*exp(hlevel/-7000)
#' 
#'
#' @section Note: 
#' The components of the hybrid coordinate must always be avaiable at the hybrid layer interfaces even if the data is defined at the hybrid layer midpoints.
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
#' @name vertintml
NULL
