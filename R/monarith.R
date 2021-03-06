## This file was created automatically, do not edit by hand.


#' Monthly arithmetic
#' 
#' This module performs simple arithmetic of a time series and one timestep with
#' the same month and year. For each field in infile1 the corresponding field of
#' the timestep in infile2 with the same month and year is used. The header
#' information in infile1 have to be the same as in infile2. Usually infile2 is
#' generated by an operator of the module MONSTAT.
#' 
#' @details
#'      monadd  Add monthly time series
#'              Adds a time series and a monthly time series.
#'      monsub  Subtract monthly time series
#'              Subtracts a time series and a monthly time series.
#'      monmul  Multiply monthly time series
#'              Multiplies a time series and a monthly time series.
#'      mondiv  Divide monthly time series
#'              Divides a time series and a monthly time series.
#' 
#' @name Monarith
NULL

#' @param infile1,infile2 input files.
#' @param outfile output file.
#' @rdname Monarith
#' @export
cdo_monadd <- function(infile1, infile2, outfile = NULL) {
  .new_step(operator = 'monadd', 
            inputs = list(infile1), 
            outputs = c(outfile), 
            n_inputs = 2,
            n_outputs = 1)
}
#' @param infile1,infile2 input files.
#' @param outfile output file.
#' @rdname Monarith
#' @export
cdo_monadd <- function(infile1, infile2, outfile = NULL) {
  .new_step(operator = 'monadd', 
            inputs = list(infile2), 
            outputs = c(outfile), 
            n_inputs = 2,
            n_outputs = 1)
}
#' @param infile1,infile2 input files.
#' @param outfile output file.
#' @rdname Monarith
#' @export
cdo_mondiv <- function(infile1, infile2, outfile = NULL) {
  .new_step(operator = 'mondiv', 
            inputs = list(infile1), 
            outputs = c(outfile), 
            n_inputs = 2,
            n_outputs = 1)
}
#' @param infile1,infile2 input files.
#' @param outfile output file.
#' @rdname Monarith
#' @export
cdo_mondiv <- function(infile1, infile2, outfile = NULL) {
  .new_step(operator = 'mondiv', 
            inputs = list(infile2), 
            outputs = c(outfile), 
            n_inputs = 2,
            n_outputs = 1)
}
#' @param infile1,infile2 input files.
#' @param outfile output file.
#' @rdname Monarith
#' @export
cdo_monmul <- function(infile1, infile2, outfile = NULL) {
  .new_step(operator = 'monmul', 
            inputs = list(infile1), 
            outputs = c(outfile), 
            n_inputs = 2,
            n_outputs = 1)
}
#' @param infile1,infile2 input files.
#' @param outfile output file.
#' @rdname Monarith
#' @export
cdo_monmul <- function(infile1, infile2, outfile = NULL) {
  .new_step(operator = 'monmul', 
            inputs = list(infile2), 
            outputs = c(outfile), 
            n_inputs = 2,
            n_outputs = 1)
}
#' @param infile1,infile2 input files.
#' @param outfile output file.
#' @rdname Monarith
#' @export
cdo_monsub <- function(infile1, infile2, outfile = NULL) {
  .new_step(operator = 'monsub', 
            inputs = list(infile1), 
            outputs = c(outfile), 
            n_inputs = 2,
            n_outputs = 1)
}
#' @param infile1,infile2 input files.
#' @param outfile output file.
#' @rdname Monarith
#' @export
cdo_monsub <- function(infile1, infile2, outfile = NULL) {
  .new_step(operator = 'monsub', 
            inputs = list(infile2), 
            outputs = c(outfile), 
            n_inputs = 2,
            n_outputs = 1)
}
