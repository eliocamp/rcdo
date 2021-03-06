% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remapdis.R
\name{Remapdis}
\alias{Remapdis}
\alias{cdo_gendis}
\alias{cdo_remapdis}
\title{Distance-weighted average remapping}
\usage{
cdo_gendis(infile, outfile = NULL)

cdo_remapdis(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
This module contains operators for a distance-weighted average remapping of the
four nearest neighbor values of fields between grids in spherical coordinates.
The interpolation is based on an adapted SCRIP library version. For a detailed
description of the interpolation method see SCRIP.
}
\details{
\preformatted{ remapdis  Distance-weighted average remapping
           Performs a distance-weighted average remapping of the nearest neighbors value on all input fields.
           The default number of nearest neighbors is 4.
 gendis    Generate distance-weighted average remap weights
           Generates distance-weighted average remapping weights of the four nearest neighbor
           values for the first input field and writes the result to a file.
           The format of this file is NetCDF following the SCRIP convention.
           Use the operator remap to apply this remapping weights to a data file with the same source grid.
}
}
