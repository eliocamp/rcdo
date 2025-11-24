# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Split a dataset
#'
#' This module splits infile into pieces. The output files will be named &lt;obase&gt;&lt;xxx&gt;&lt;suffix&gt; where suffix is the filename extension derived from the file format. xxx and the contents of the output files depends on the chosen operator. params is a comma-separated list of processing parameters. 
#'
#' @details
#'     splitcode    Split code numbers
#'                  Splits a dataset into pieces, one for each different code number.
#'                  xxx will have three digits with the code number.
#'     splitparam   Split parameter identifiers
#'                  Splits a dataset into pieces, one for each different parameter identifier.
#'                  xxx will be a string with the parameter identifier.
#'     splitname    Split variable names
#'                  Splits a dataset into pieces, one for each variable name.
#'                  xxx will be a string with the variable name.
#'     splitlevel   Split levels
#'                  Splits a dataset into pieces, one for each different level.
#'                  xxx will have six digits with the level.
#'     splitgrid    Split grids
#'                  Splits a dataset into pieces, one for each different grid.
#'                  xxx will have two digits with the grid number.
#'     splitzaxis   Split z-axes
#'                  Splits a dataset into pieces, one for each different z-axis.
#'                  xxx will have two digits with the z-axis number.
#'     splittabnum  Split parameter table numbers
#'                  Splits a dataset into pieces, one for each GRIB1 parameter table number.
#'                  xxx will have three digits with the GRIB1 parameter table number.
#' 
#'
#' @section Note: 
#' Operators of this module need to open all output files simultaneously. The maximum number of open files depends on the operating system!
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
#' @name split
NULL
