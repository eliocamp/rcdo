## This file was created automatically, do not edit by hand.
#' Bicubic interpolation
#'
#' This module contains operators for a bicubic remapping of fields between grids in spherical coordinates. The interpolation is based on an adapted SCRIP library version. For a detailed description of the interpolation method see SCRIP. This interpolation method only works on quadrilateral curvilinear source grids. 
#'
#' @details
#'     remapbic  Bicubic interpolation
#'               Performs a bicubic interpolation on all input fields.
#'     genbic    Generate bicubic interpolation weights
#'               Generates bicubic interpolation weights for the first input field and writes the
#'               result to a file. The format of this file is NetCDF following the SCRIP convention.
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
#' @name remapbic
NULL
