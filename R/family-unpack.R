## This file was created automatically, do not edit by hand.
#' Unpack data
#'
#' Packing reduces the data volume by reducing the precision of the stored numbers. It is implemented using the NetCDF attributes add_offset and scale_factor. The operator unpack unpack all packed variables. The default data type for all variables is automatically changed to 32-bit floats. Use the CDO option -b F64 to change the data type to 64-bit floats, if needed.
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
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name unpack
NULL
