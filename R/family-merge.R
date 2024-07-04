## This file was created automatically, do not edit by hand.
#' Merge datasets
#'
#' This module reads datasets from several input files, merges them and writes the resulting dataset to outfile. 
#'
#' @details
#'     merge      Merge datasets with different fields
#'                Merges time series of different fields from several input datasets. The number 
#'                of fields per timestep written to outfile is the sum of the field numbers 
#'                per timestep in all input datasets. The time series on all input datasets are 
#'                required to have different fields and the same number of timesteps.
#'                The fields in each different input file either have to be different variables
#'                or different levels of the same variable. A mixture of different variables on
#'                different levels in different input files is not allowed.
#'     mergetime  Merge datasets sorted by date and time
#'                Merges all timesteps of all input files sorted by date and time.
#'                All input files need to have the same structure with the same variables on 
#'                different timesteps. After this operation every input timestep is in outfile 
#'                and all timesteps are sorted by date and time.
#' 
#'
#' @section Note: 
#' Operators of this module need to open all input files simultaneously. The maximum number of open files depends on the operating system!
#'
#' @name merge
NULL
