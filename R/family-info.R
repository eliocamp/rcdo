## This file was created automatically, do not edit by hand.
#' Information and simple statistics
#'
#' This module writes information about the structure and contents for each field of all input files to standard output. A field is a horizontal layer of a data variable. All input files need to have the same structure with the same variables on different timesteps. The information displayed depends on the chosen operator. 
#'
#' @details
#'     info   Dataset information listed by parameter identifier
#'            Prints information and simple statistics for each field of all input datasets.
#'            For each field the operator prints one line with the following elements:
#'            - Date and Time
#'            - Level, Gridsize and number of Missing values
#'            - Minimum, Mean and Maximum \\
#'            The mean value is computed without the use of area weights!
#'            - Parameter identifier
#'     infon  Dataset information listed by parameter name
#'            The same as operator info but using the name instead of the
#'            identifier to label the parameter.
#'     map    Dataset information and simple map
#'            Prints information, simple statistics and a map for each field of all input
#'            datasets. The map will be printed only for fields on a regular lon/lat grid.
#'
#' 
#'
#' @name info
NULL
