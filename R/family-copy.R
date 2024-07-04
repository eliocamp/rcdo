## This file was created automatically, do not edit by hand.
#' Copy datasets
#'
#' This module contains operators to copy, clone or concatenate datasets. infiles is an arbitrary number of input files. All input files need to have the same structure with the same variables on different timesteps. 
#'
#' @details
#'     copy   Copy datasets
#'            Copies all input datasets to outfile. 
#'     clone  Clone datasets
#'            Copies all input datasets to outfile. In contrast to the copy operator, clone tries
#'            not to change the input data. GRIB records are neither decoded nor decompressed.
#'     cat    Concatenate datasets
#'            Concatenates all input datasets and appends the result to the end 
#'            of outfile. If outfile does not exist it will be created.
#'
#' 
#'
#' @name copy
NULL
