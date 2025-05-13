## This file was created automatically, do not edit by hand.
#' GrADS data descriptor file
#'
#' Creates a GrADS data descriptor file. Supported file formats are GRIB1, NetCDF, SERVICE, EXTRA and IEG. For GRIB1 files the GrADS map file is also generated. For SERVICE and EXTRA files the grid have to be specified with the CDO option '-g &lt;grid&gt;'. This module takes infile in order to create filenames for the descriptor (infile.ctl) and the map (infile.gmp) file. 
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
#' @name gradsdes
NULL
