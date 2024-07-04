## This file was created automatically, do not edit by hand.
#' Bilinear interpolation
#'
#' This module contains operators for a bilinear remapping of fields between grids in spherical coordinates. The interpolation is based on an adapted SCRIP library version. For a detailed description of the interpolation method see SCRIP. This interpolation method only works on quadrilateral curvilinear source grids. 
#'
#' @details
#'     remapbil  Bilinear interpolation
#'               Performs a bilinear interpolation on all input fields.
#'     genbil    Generate bilinear interpolation weights
#'               Generates bilinear interpolation weights for the first input field and writes the
#'               result to a file. The format of this file is NetCDF following the SCRIP convention.
#'               Use the operator remap to apply this remapping weights to a data file with the same source grid.
#'               Set the parameter map3d=true to generate all mapfiles of the first 3D field with varying masks.
#'               In this case the mapfiles will be named &lt;outfile&gt;&lt;xxx&gt;.nc. xxx will have five digits with the number of the mapfile.
#' 
#'
#' 
#'
#' @name remapbil
NULL
