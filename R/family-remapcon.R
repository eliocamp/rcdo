## This file was created automatically, do not edit by hand.
#' First order conservative remapping
#'
#' This module contains operators for a first order conservative remapping of fields between grids in spherical coordinates. The operators in this module uses code from the YAC software package to compute the conservative remapping weights. For a detailed description of the interpolation method see YAC. The interpolation method is completely general and can be used for any grid on a sphere. The search algorithm for the conservative remapping requires that no grid cell occurs more than once. 
#'
#' @details
#'     remapcon  First order conservative remapping
#'               Performs a first order conservative remapping on all input fields.
#'     gencon    Generate 1st order conservative remap weights
#'               Generates first order conservative remapping weights for the first input field and
#'               writes the result to a file. The format of this file is NetCDF following the SCRIP convention.
#'               Use the operator remap to apply this remapping weights to a data file with the same source grid.
#'               Set the parameter map3d=true to generate all mapfiles of the first 3D field with varying masks.
#'               In this case the mapfiles will be named &lt;outfile&gt;&lt;xxx&gt;.nc. xxx will have five digits with the number of the mapfile.
#' 
#'
#' 
#'
#' @returns
#' Operators that output one or more files return a character vector to the
#' output files.
#'
#' Operators that output an indefinite number of files return a string with the
#' basename of the files.
#'
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name remapcon
NULL
