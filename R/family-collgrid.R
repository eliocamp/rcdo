## This file was created automatically, do not edit by hand.
#' Collect horizontal grid
#'
#' This operator collects the data of the input files to one output file. All input files need to have the same variables and the same number of timesteps on a different horizonal grid region. If the source regions are on a structured lon/lat grid, all regions together must result in a new structured lat/long grid box. Data on an unstructured grid is concatenated in the order of the input files. The parameter nx needs to be specified only for curvilinear grids. 
#'
#' 
#'
#' @section Note: 
#' This operator needs to open all input files simultaneously. The maximum number of open files depends on the operating system!
#'
#' @name collgrid
NULL
