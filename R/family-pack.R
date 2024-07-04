## This file was created automatically, do not edit by hand.
#' Pack data
#'
#' Packing reduces the data volume by reducing the precision of the stored numbers. It is implemented using the NetCDF attributes add_offset and scale_factor. The operator pack calculates the attributes add_offset and scale_factor for all variables. The default data type for all variables is automatically changed to 16-bit integer. Use the CDO option -b to change the data type to a different integer precision, if needed. Missing values are automatically transformed to the current data type.  Alternatively, the pack parameters add_offset and scale_factor can be read from a file for each variable. 
#'
#' 
#'
#' 
#'
#' @name pack
NULL
