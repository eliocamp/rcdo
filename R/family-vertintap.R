## This file was created automatically, do not edit by hand.
#' Vertical pressure interpolation
#'
#' Interpolate 3D variables on hybrid sigma height coordinates to pressure levels. The input file must contain the 3D air pressure in pascal. The air pressure is identified by the NetCDF CF standard name air_pressure. Use the alias  ap2plx or the environment variable EXTRAPOLATE to extrapolate missing values. This operator requires all variables on the same horizontal grid. 
#'
#' 
#'
#' @section Note: 
#' This is a specific implementation for NetCDF files from the ICON model, it may not work with data from other sources.
#'
#' @name vertintap
NULL
