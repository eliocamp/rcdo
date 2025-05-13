## This file was created automatically, do not edit by hand.
#' Wind transformation
#'
#' This module converts relative divergence and vorticity to U and V wind and vice versa. Divergence and vorticity are spherical harmonic coefficients in spectral space and U and V are on a global regular Gaussian grid. The Gaussian latitudes need to be ordered from north to south. Missing values are not supported.  The relationship between the spectral resolution, governed by the truncation number T, and the grid resolution depends on the number of grid points at which the shortest wavelength field is represented. For a grid with 2N points between the poles (so 4N grid points in total around the globe) the relationship is:  linear grid: the shortest wavelength is represented by 2 grid points → 4N ≃ 2(TL + 1)  quadratic grid: the shortest wavelength is represented by 3 grid points → 4N ≃ 3(TQ + 1)  cubic grid: the shortest wavelength is represented by 4 grid points → 4N ≃ 4(TC + 1)  The quadratic grid is used by ECHAM and ERA15. ERA40 is using a linear Gaussian grid reflected by the TL notation.  The following table shows the calculation of the number of latitudes and the triangular truncation for the different grid types:  Gridtype           &amp; Number of latitudes: nlat   &amp; Triangular truncation: ntr linear           &amp;     NINT((ntr*2 + 1)/2)     &amp;     (nlat*2 - 1) / 2 quadratic        &amp;     NINT((ntr*3 + 1)/2)     &amp;     (nlat*2 - 1) / 3 cubic            &amp;     NINT((ntr*4 + 1)/2)     &amp;     (nlat*2 - 1) / 4 
#'
#' @details
#'     dv2uv  Divergence and vorticity to U and V wind
#'            Calculate U and V wind on a Gaussian grid from spherical harmonic 
#'            coefficients of relative divergence and vorticity. The divergence and vorticity 
#'            need to have the names sd and svo or code numbers 155 and 138.
#'     uv2dv  U and V wind to divergence and vorticity
#'            Calculate spherical harmonic coefficients of relative divergence and vorticity
#'            from U and V wind. The U and V wind need to be on a Gaussian grid and need to have the 
#'            names u and v or the code numbers 131 and 132.
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
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name wind
NULL
