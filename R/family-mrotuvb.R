## This file was created automatically, do not edit by hand.
#' Backward rotation of MPIOM data
#'
#' MPIOM data are on a rotated Arakawa C grid. The velocity components U and V are located on the edges of the cells and point in the direction of the grid lines and rows. With mrotuvb the velocity vector is rotated in latitudinal and longitudinal direction. Before the rotation, U and V are interpolated to the scalar points (cell center). U is located with the coordinates for U in infile1 and V in infile2. mrotuvb assumes a positive meridional flow for a flow from grid point(i,j) to grid point(i,j+1) and positive zonal flow for a flow from grid point(i+1,j) to point(i,j). 
#'
#' 
#'
#' @section Note: 
#' This is a specific implementation for data from the MPIOM model, it may not work with data from other sources.
#'
#' @name mrotuvb
NULL
