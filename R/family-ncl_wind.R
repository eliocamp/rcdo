# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Wind transformation
#'
#' This module contains CDO operators with an interface to NCL functions. The corresponding NCL functions have the same name. A more detailed description of those NCL function can be found on the NCL homepage https://www.ncl.ucar.edu. 
#'
#' @details
#'     uv2vr_cfd  U and V wind to relative vorticity
#'                Computes relative vorticity for a latitude-longitude grid using centered finite differences.
#'                The grid need not be global and missing values are allowed.
#'     uv2dv_cfd  U and V wind to divergence
#'                Computes divergence for a latitude-longitude grid using centered finite differences.
#'                The grid need not be global and missing values are allowed.
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
#' @name ncl_wind
NULL
