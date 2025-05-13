## This file was created automatically, do not edit by hand.
#' Largest area fraction remapping
#'
#' This module contains operators for a largest area fraction remapping of fields between grids in spherical coordinates. The operators in this module uses code from the YAC software package to compute the largest area fraction. For a detailed description of the interpolation method see YAC. The interpolation method is completely general and can be used for any grid on a sphere. The search algorithm for this remapping method requires that no grid cell occurs more than once. 
#'
#' @details
#'     remaplaf  Largest area fraction remapping
#'               Performs a largest area fraction remapping on all input fields.
#'     genlaf    Generate largest area fraction remap weights
#'               Generates largest area fraction remapping weights for the first input field and
#'               writes the result to a file. The format of this file is NetCDF following the SCRIP convention.
#'               Use the operator remap to apply this remapping weights to a data file with the same source grid.
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
#' @name remaplaf
NULL
