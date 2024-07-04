## This file was created automatically, do not edit by hand.
#' Split timesteps of a dataset
#'
#' This module splits infile into  timesteps pieces. The output files will be named &lt;obase&gt;&lt;xxx&gt;&lt;suffix&gt; where suffix is the filename extension derived from the file format. xxx and the contents of the output files depends on the chosen operator. 
#'
#' @details
#'     splithour     Split hours
#'                   Splits a file into pieces, one for each different hour.
#'                   xxx will have two digits with the hour.
#'     splitday      Split days
#'                   Splits a file into pieces, one for each different day.
#'                   xxx will have two digits with the day.
#'     splitseas     Split seasons
#'                   Splits a file into pieces, one for each different season.
#'                   xxx will have three characters with the season.
#'     splityear     Split years
#'                   Splits a file into pieces, one for each different year.
#'                   xxx will have four digits with the year (YYYY).
#'     splityearmon  Split in years and months
#'                   Splits a file into pieces, one for each different year and month.
#'                   xxx will have six digits with the year and month (YYYYMM).
#'     splitmon      Split months
#'                   Splits a file into pieces, one for each different month.
#'                   xxx will have two digits with the month.
#' 
#'
#' @section Note: 
#' Operators of this module need to open all output files simultaneously. The maximum number of open files depends on the operating system!
#'
#' @name splittime
NULL
