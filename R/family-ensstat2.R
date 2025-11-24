# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Statistical values over an ensemble
#'
#' This module computes statistical values over the ensemble of ensfiles using obsfile as a reference. Depending on the operator a ranked Histogram or a roc-curve over all Ensembles ensfiles with reference to obsfile is written to outfile. The date and grid information of a timestep in outfile is the date of the first input file. Thus all input files are required to have the same structure in terms of the gridsize, variable definitions and number of timesteps.  All Operators in this module use obsfile as the reference (for instance an observation) whereas ensfiles are understood as an ensemble consisting of n (where n is the number of ensfiles) members.  The operators ensrkhistspace and ensrkhisttime compute Ranked Histograms. Therefor the vertical axis is utilized as the Histogram axis, which prohibits the use of files containing more than one level. The histogram axis has nensfiles+1 bins with level 0 containing for each grid point the number of observations being smaller as all ensembles and level nensfiles+1 indicating the number of observations being larger than all ensembles.  ensrkhisttime computes a ranked histogram at each timestep reducing each horizontal grid to a 1x1 grid and keeping the time axis as in obsfile. Contrary ensrkhistspace  computes a histogram at each grid point keeping the horizontal grid for each variable and reducing the time-axis. The time information is that from the last timestep in obsfile. 
#'
#' @details
#'     ensrkhistspace  Ranked Histogram averaged over space
#'     ensrkhisttime   Ranked Histogram averaged over time
#'     ensroc          Ensemble Receiver Operating characteristics
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
#' @name ensstat2
NULL
