## This file was created automatically, do not edit by hand.
#' Remap vertical hybrid level
#'
#' This operator interpolates between different vertical hybrid levels. This include the preparation of consistent data for the free atmosphere. The procedure for the vertical interpolation is based on the HIRLAM scheme and was adapted from INTERA. The vertical interpolation is based on the vertical integration of the hydrostatic equation with few adjustments. The basic tasks are the following one: - at first integration of hydrostatic equation - extrapolation of surface pressure - Planetary Boundary-Layer (PBL) proutfile interpolation - interpolation in free atmosphere - merging of both proutfiles - final surface pressure correction  The vertical interpolation corrects the surface pressure. This is simply a cut-off or an addition of air mass. This mass correction should not influence the geostrophic velocity field in the middle troposhere. Therefore the total mass above a given reference level is conserved. As reference level the geopotential height of the 400 hPa level is used. Near the surface the correction can affect the vertical structure of the PBL. Therefore the interpolation is done using the potential temperature. But in the free atmosphere above a certain n (n=0.8 defining the top of the PBL) the interpolation is done linearly. After the interpolation both proutfiles are merged. With the resulting temperature/pressure correction the hydrostatic equation is integrated again and adjusted to the reference level finding the final surface pressure correction. A more detailed description of the interpolation can be found in INTERA. This operator requires all variables on the same horizontal grid. 
#'
#' 
#'
#' @section Note: 
#' The code numbers or the variable names of the required parameter have to follow the ECHAM convention.  Use the sinfo command to test if your vertical coordinate system is recognized as hybrid system.  In case remapeta complains about not finding any data on hybrid model levels you may wish to use the setzaxis command to generate a zaxis description which conforms to the ECHAM convention. See section \&quot;1.4 Z-axis description\&quot; for an example how to define a hybrid Z-axis.
#'
#' @returns
#' Operators that output one or more files return a character vector to the
#' output files.
#'
#' Operators that output an indefinite number of files return a string with the
#' basename of the files.
#'
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name remapeta
NULL
