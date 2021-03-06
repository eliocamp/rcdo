## This file was created automatically, do not edit by hand.


#' Mask a box
#' 
#' Masked a box of the rectangularly understood field. The elements inside the box
#' are untouched, the elements outside are set to missing value. All input fields
#' need to have the same horizontal grid. Use sellonlatbox or selindexbox if only
#' the data inside the box are needed.
#' 
#' @details
#'      masklonlatbox  Mask a longitude/latitude box
#'                     Masked a regular longitude/latitude box. The user has to give the longitudes and latitudes of the 
#'                     edges of the box. Considered are only those grid cells with the grid center inside the lon/lat box.
#'      maskindexbox   Mask an index box
#'                     Masked an index box. The user has to give the indexes of the edges of the box. 
#'                     The index of the left edge can be greater then the one of the right edge.
#' 
#' @name Maskbox
NULL

#' @param infile input file.
#' @param outfile output file.
#' @rdname Maskbox
#' @export
cdo_maskindexbox <- function(infile, outfile = NULL) {
  .new_step(operator = 'maskindexbox', 
            inputs = list(infile), 
            outputs = c(outfile), 
            n_inputs = 1,
            n_outputs = 1)
}
#' @param infile input file.
#' @param outfile output file.
#' @rdname Maskbox
#' @export
cdo_masklonlatbox <- function(infile, outfile = NULL) {
  .new_step(operator = 'masklonlatbox', 
            inputs = list(infile), 
            outputs = c(outfile), 
            n_inputs = 1,
            n_outputs = 1)
}
