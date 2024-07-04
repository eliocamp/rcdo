## This file was created automatically, do not edit by hand.
#' Nearest neighbor remapping
#'
#' This module contains operators for a nearest neighbor remapping of fields between grids in spherical coordinates. 
#'
#' @details
#'     remapnn  Nearest neighbor remapping
#'              Performs a nearest neighbor remapping on all input fields.
#'     gennn    Generate nearest neighbor remap weights
#'              Generates nearest neighbor remapping weights for the first input field and writes the result to a file.
#'              The format of this file is NetCDF following the SCRIP convention.
#'              Use the operator remap to apply this remapping weights to a data file with the same source grid.
#'              Set the parameter map3d=true to generate all mapfiles of the first 3D field with varying masks.
#'              In this case the mapfiles will be named &lt;outfile&gt;&lt;xxx&gt;.nc. xxx will have five digits with the number of the mapfile.
#' 
#'
#' 
#'
#' @name remapnn
NULL
