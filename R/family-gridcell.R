# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Grid cell quantities
#'
#' This module reads the grid cell area of the first grid from the input stream. If the grid cell area is missing it will be computed from the grid coordinates. The area of a grid cell is calculated using spherical triangles from the coordinates of the center and the vertices. The base is a unit sphere which is scaled with the radius of the planet. The default planet radius is 6371000 meter. The parameter radius or the environment variable PLANET_RADIUS can be used to change the default. Depending on the chosen operator the grid cell area or weights are written to the output stream. 
#'
#' @details
#'     gridarea     Grid cell area
#'                  Writes the grid cell area to the output stream. If the grid cell area have to
#'                  be computed it is scaled with the planet radius to square meters.
#'     gridweights  Grid cell weights
#'                  Writes the grid cell area weights to the output stream.
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
#' Operators that don't return filenames return a character vector with the
#' string output.
#' @name gridcell
NULL
