# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Verify grid coordinates
#'
#' This operator verifies the coordinates of all horizontal grids found in infile. Among other things, it searches for duplicate cells, non-convex cells, and whether the center is located outside the cell bounds. Use the CDO option -v to output the position of these cells. This information can be useful to avoid problems when interpolating the data.
#'
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
#' @name verifygrid
NULL
