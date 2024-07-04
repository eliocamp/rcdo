## This file was created automatically, do not edit by hand.
#' Vertical height interpolation
#'
#' Interpolate 3D variables on hybrid sigma height coordinates to height levels. The input file must contain the 3D geometric height in meter. The geometric height is identified by the NetCDF CF standard name geometric_height_at_full_level_center. Use the alias  gh2hlx or the environment variable EXTRAPOLATE to extrapolate missing values. This operator requires all variables on the same horizontal grid. 
#'
#' 
#'
#' @section Note: 
#' This is a specific implementation for NetCDF files from the ICON model, it may not work with data from other sources.
#'
#' @name vertintgh
NULL
