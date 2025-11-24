# fmt: skip file
## This file was created automatically, do not edit by hand.
#' Spectral transformation
#'
#' This module transforms fields on a global regular Gaussian grid to spectral coefficients and vice versa. The transformation is achieved by applying Fast Fourier Transformation (FFT) first and direct Legendre Transformation afterwards in gp2sp. In sp2gp the inverse Legendre Transformation and inverse FFT are used. Missing values are not supported.  The relationship between the spectral resolution, governed by the truncation number T, and the grid resolution depends on the number of grid points at which the shortest wavelength field is represented. For a grid with 2N points between the poles (so 4N grid points in total around the globe) the relationship is:  linear grid: the shortest wavelength is represented by 2 grid points → 4N \eqn{\simeq} 2(TL + 1)  quadratic grid: the shortest wavelength is represented by 3 grid points → 4N \eqn{\simeq} 3(TQ + 1)  cubic grid: the shortest wavelength is represented by 4 grid points → 4N \eqn{\simeq} 4(TC + 1)  The quadratic grid is used by ECHAM and ERA15. ERA40 is using a linear Gaussian grid reflected by the TL notation.  The following table shows the calculation of the number of latitudes and the triangular truncation for the different grid types:  Gridtype           &amp; Number of latitudes: nlat   &amp; Triangular truncation: ntr linear           &amp;     NINT((ntr*2 + 1)/2)     &amp;     (nlat*2 - 1) / 2 quadratic        &amp;     NINT((ntr*3 + 1)/2)     &amp;     (nlat*2 - 1) / 3 cubic            &amp;     NINT((ntr*4 + 1)/2)     &amp;     (nlat*2 - 1) / 4 
#'
#' @details
#'     sp2gp  Spectral to gridpoint
#'            Convert all spectral fields to a global regular Gaussian grid.
#'            The optional parameter trunc must be greater than the input truncation.
#'     gp2sp  Gridpoint to spectral
#'            Convert all Gaussian gridpoint fields to spectral fields.
#'            The optional parameter trunc must be lower than the input truncation.
#' 
#'
#' @section Note: 
#' To speed up the calculations, the Legendre polynoms are kept in memory. This requires a relatively large amount of memory. This is for example 12GB for T1279 data.
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
#' @name spectral
NULL
