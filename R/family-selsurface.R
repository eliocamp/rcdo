# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Extract surface
#'
#' This module computes a surface from all 3D variables. The result is a horizonal 2D field. 
#'
#' @details
#'     bottomvalue  Extract bottom level
#'                  This operator selects the valid values at the bottom level.
#'                  The NetCDF CF compliant attribute positive is used to determine where top and bottom are.
#'                  If this attribute is missing, low values are bottom and high values are top.
#'     topvalue     Extract top level
#'                  This operator selects the valid values at the top level.
#'                  The NetCDF CF compliant attribute positive is used to determine where top and bottom are.
#'                  If this attribute is missing, low values are bottom and high values are top.
#'     isosurface   Extract isosurface
#'                  This operator computes an isosurface. The value of the isosurfce is specified by the parameter isovalue.
#'                  The isosurface is calculated by linear interpolation between two layers.
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
#' @name selsurface
NULL
