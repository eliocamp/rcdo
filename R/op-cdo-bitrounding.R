# fmt: skip file
## This file was created automatically, do not edit by hand.
#' @param ifile String with the path to the input file.
#' @param ofile String with the path to the output file.
#' @param inflevel FLOAT - Information level (0 - 1) \[default: 0.9999\]
#' @param addbits INTEGER - Add bits to the number of significant bits \[default: 0\]
#' @param minbits INTEGER - Minimum value of the number of bits \[default: 1\]
#' @param maxbits INTEGER - Maximum value of the number of bits \[default: 23\]
#' @param numsteps INTEGER - Set to 1 to run the calculation only in the first time step
#' @param numbits INTEGER - Set number of significant bits
#' @param printbits BOOL - Print max. numbits per variable of 1st timestep to stdout \[format: name=numbits\]
#' @param filename STRING - Read number of significant bits per variable from file \[format: name=numbits\]
#'
#' @export
#' @rdname bitrounding
cdo_bitrounding <- function(ifile, inflevel = NULL, addbits = NULL, minbits = NULL, maxbits = NULL, numsteps = NULL, numbits = NULL, printbits = NULL, filename = NULL, ofile = NULL) {
  cdo(operator = operators$bitrounding,
      input = list(ifile),
      params = list(inflevel = inflevel, addbits = addbits, minbits = minbits, maxbits = maxbits, numsteps = numsteps, numbits = numbits, printbits = printbits, filename = filename),
      output = c(ofile)
  )
}
