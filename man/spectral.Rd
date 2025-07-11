% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-spectral.R, R/op-cdo-gp2sp.R,
%   R/op-cdo-sp2gp.R
\name{spectral}
\alias{spectral}
\alias{cdo_gp2sp}
\alias{cdo_sp2gp}
\title{Spectral transformation}
\usage{
cdo_gp2sp(ifile, type = NULL, trunc = NULL, ofile = NULL)

cdo_sp2gp(ifile, type = NULL, trunc = NULL, ofile = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{type}{STRING - Type of the grid: quadratic, linear, cubic (default: type=quadratic)}

\item{trunc}{STRING - Triangular truncation}

\item{ofile}{String with the path to the output file.}
}
\value{
Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with the
basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
}
\description{
This module transforms fields on a global regular Gaussian grid to spectral coefficients and vice versa. The transformation is achieved by applying Fast Fourier Transformation (FFT) first and direct Legendre Transformation afterwards in gp2sp. In sp2gp the inverse Legendre Transformation and inverse FFT are used. Missing values are not supported.  The relationship between the spectral resolution, governed by the truncation number T, and the grid resolution depends on the number of grid points at which the shortest wavelength field is represented. For a grid with 2N points between the poles (so 4N grid points in total around the globe) the relationship is:  linear grid: the shortest wavelength is represented by 2 grid points → 4N \eqn{\simeq} 2(TL + 1)  quadratic grid: the shortest wavelength is represented by 3 grid points → 4N \eqn{\simeq} 3(TQ + 1)  cubic grid: the shortest wavelength is represented by 4 grid points → 4N \eqn{\simeq} 4(TC + 1)  The quadratic grid is used by ECHAM and ERA15. ERA40 is using a linear Gaussian grid reflected by the TL notation.  The following table shows the calculation of the number of latitudes and the triangular truncation for the different grid types:  Gridtype           & Number of latitudes: nlat   & Triangular truncation: ntr linear           &     NINT((ntr\emph{2 + 1)/2)     &     (nlat}2 - 1) / 2 quadratic        &     NINT((ntr\emph{3 + 1)/2)     &     (nlat}2 - 1) / 3 cubic            &     NINT((ntr\emph{4 + 1)/2)     &     (nlat}2 - 1) / 4
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{sp2gp  Spectral to gridpoint
       Convert all spectral fields to a global regular Gaussian grid.
       The optional parameter trunc must be greater than the input truncation.
gp2sp  Gridpoint to spectral
       Convert all Gaussian gridpoint fields to spectral fields.
       The optional parameter trunc must be lower than the input truncation.
}\if{html}{\out{</div>}}
}
\section{Note}{

To speed up the calculations, the Legendre polynoms are kept in memory. This requires a relatively large amount of memory. This is for example 12GB for T1279 data.
}

