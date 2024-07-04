## This file was created automatically, do not edit by hand.
#' Distance weighted average remapping
#'
#' This module contains operators for an inverse distance weighted average remapping of the four nearest neighbor values of fields between grids in spherical coordinates. The default number of 4 neighbors can be changed with the neighbors parameter. 
#'
#' @details
#'     remapdis  Distance weighted average remapping
#'               Performs an inverse distance weighted averaged remapping of the nearest neighbor values on all input fields.
#'     gendis    Generate distance weighted average remap weights
#'               Generates distance weighted averaged remapping weights of the nearest neighbor values for the first input
#'               field and writes the result to a file. The format of this file is NetCDF following the SCRIP convention.
#'               Use the operator remap to apply this remapping weights to a data file with the same source grid.
#'               Set the parameter map3d=true to generate all mapfiles of the first 3D field with varying masks.
#'               In this case the mapfiles will be named &lt;outfile&gt;&lt;xxx&gt;.nc. xxx will have five digits with the number of the mapfile.
#' 
#'
#' 
#'
#' @name remapdis
NULL
