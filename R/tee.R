## This file was created automatically, do not edit by hand.


#' Duplicate a data stream and write it to file
#' 
#' This operator copies the input dataset to outfile1 and outfile2. The first
#' output stream in outfile1 can be further processesd with other cdo operators.
#' The second output outfile2 is written to disk. It can be used to store
#' intermediate results to a file.
#' 
#' @details
#'      copy  Copy datasets
#'            Copies all input datasets to outfile. 
#'      cat   Concatenate datasets
#'            Concatenates all input datasets and appends the result to the end 
#'            of outfile. If outfile does not exist it will be created.
#' 
#' @name Tee
NULL

#' @param infile1,infile2 input files.
#' @param outfile output file.
#' @rdname Tee
#' @export
cdo_tee <- function(infile1, infile2, outfile = NULL) {
  .new_step(operator = 'tee', 
            inputs = list(infile1), 
            outputs = c(outfile), 
            n_inputs = 2,
            n_outputs = 1)
}
#' @param infile1,infile2 input files.
#' @param outfile output file.
#' @rdname Tee
#' @export
cdo_tee <- function(infile1, infile2, outfile = NULL) {
  .new_step(operator = 'tee', 
            inputs = list(infile2), 
            outputs = c(outfile), 
            n_inputs = 2,
            n_outputs = 1)
}
