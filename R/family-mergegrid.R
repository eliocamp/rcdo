# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Merge grid
#'
#' Merges grid points of all variables from infile2 to infile1 and write the result to outfile. Only the non missing values of infile2 will be used. The horizontal grid of infile2 should be smaller or equal to the grid of infile1 and the resolution must be the same. Only rectilinear grids are supported. Both input files need to have the same variables and the same number of timesteps.
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
#' @name mergegrid
NULL
