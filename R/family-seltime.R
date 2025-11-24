# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Select timesteps
#'
#' This module selects user specified timesteps from infile and writes them to outfile. The timesteps selected depends on the chosen operator and the parameters. A range of integer values can be specified by first/last\[/inc\]. 
#'
#' @details
#'     seltimestep  Select timesteps
#'                  Selects all timesteps with a timestep in a user given list or range.
#'     seltime      Select times
#'                  Selects all timesteps with a time in a user given list or range.
#'     selhour      Select hours
#'                  Selects all timesteps with a hour in a user given list or range.
#'     selday       Select days
#'                  Selects all timesteps with a day in a user given list or range.
#'     selmonth     Select months
#'                  Selects all timesteps with a month in a user given list or range.
#'     selyear      Select years
#'                  Selects all timesteps with a year in a user given list or range.
#'     selseason    Select seasons
#'                  Selects all timesteps with a month of a season in a user given list.
#'     seldate      Select dates
#'                  Selects all timesteps with a date in a user given range.
#'     selsmon      Select single month
#'                  Selects a month and optional an arbitrary number of timesteps before and after this month.
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
#' Operators that don't return filenames return a character vector with the
#' string output.
#' @name seltime
NULL
