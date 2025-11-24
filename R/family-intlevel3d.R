# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Linear level interpolation from/to 3D vertical coordinates
#'
#' This operator performs a linear vertical interpolation of 3D variables fields with given 3D vertical coordinates. infile1 contains the 3D data variables and infile2 the 3D vertical source coordinate. The parameter tgtcoordinate is a datafile with the 3D vertical target coordinate. 
#'
#' @details
#'     intlevel3d   Linear level interpolation onto a 3D vertical coordinate
#'     intlevelx3d  like intlevel3d but with extrapolation
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
#' @name intlevel3d
NULL
