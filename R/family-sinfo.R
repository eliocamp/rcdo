## This file was created automatically, do not edit by hand.
#' Short information
#'
#' This module writes information about the structure of infiles to standard output. infiles is an arbitrary number of input files. All input files need to have the same structure with the same variables on different timesteps. The information displayed depends on the chosen operator. 
#'
#' @details
#'     sinfo   Short information listed by parameter identifier
#'             Prints short information of a dataset. The information is divided into 4 sections.
#'             Section 1 prints one line per parameter with the following information:
#'             - institute and source
#'             - time c=constant v=varying
#'             - type of statistical processing
#'             - number of levels and z-axis number
#'             - horizontal grid size and number
#'             - data type
#'             - parameter identifier
#'             Section 2 and 3 gives a short overview of all grid and vertical coordinates.
#'             And the last section contains short information of the time coordinate.
#'     sinfon  Short information listed by parameter name
#'             The same as operator sinfo but using the name instead of the identifier to label the parameter.
#'
#' 
#'
#' @name sinfo
NULL
