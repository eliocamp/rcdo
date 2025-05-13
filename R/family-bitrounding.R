## This file was created automatically, do not edit by hand.
#' Bit rounding
#'
#' This operator calculates for each field the number of necessary mantissa bits to get a certain information level in the data. With this number of significant bits (numbits) a rounding of the data is performed. This allows the data to be compressed to a higher level.  The default value of the information level is 0.9999 and can be adjusted with the parameter inflevel. That means 99.99% of the information in the mantissa bits is preserved.  Alternatively, the number of significant bits can be set for all variables with the numbits parameter. Furthermore, numbits can be assigned for each variable via the filename parameter. In this case, numbits is still calculated for all variables if they are not present in the file.  The analysis of the bit information is based on the Julia library BitInformation.jl (https://github.com/milankl/BitInformation.jl). The procedure to derive the number of significant mantissa bits was adapted from the Python library xbitinfo (https://github.com/observingClouds/xbitinfo). Quantize to the number of mantissa bits is done with IEEE rounding using code from NetCDF 4.9.0.  Currently only 32-bit float data is rounded. Data with missing values are not yet supported for the calculation of significant bits. 
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
#' @name bitrounding
NULL
