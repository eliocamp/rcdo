# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Consecute timestep periods
#'
#' This module computes periods over all timesteps in infile where a certain property is valid. The property can be chosen by creating a mask from the original data, which is the expected input format for operators of this module. Depending on the operator full information about each period or just its length and ending date are computed. 
#'
#' @details
#'     consecsum  Consecutive Sum
#'                This operator computes periods of consecutive timesteps similar to a
#'                runsum, but periods are finished, when the mask value is 0. That way
#'                multiple periods can be found. Timesteps from the input are preserved. Missing
#'                values are handled like 0, i.e. finish periods of consecutive timesteps.
#'     consects   Consecutive Timesteps
#'                In contrast to the operator above consects only computes the length of each
#'                period together with its last timestep. To be able to perform statistical
#'                analysis like min, max or mean, everything else is set to missing value.
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
#' @name consecstat
NULL
