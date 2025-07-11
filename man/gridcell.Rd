% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-gridcell.R, R/op-cdo-gridarea.R,
%   R/op-cdo-gridweights.R
\name{gridcell}
\alias{gridcell}
\alias{cdo_gridarea}
\alias{cdo_gridweights}
\title{Grid cell quantities}
\usage{
cdo_gridarea(ifile, radius = NULL, ofile = NULL)

cdo_gridweights(ifile, radius = NULL, ofile = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{radius}{FLOAT - Planet radius in meter}

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
This module reads the grid cell area of the first grid from the input stream. If the grid cell area is missing it will be computed from the grid coordinates. The area of a grid cell is calculated using spherical triangles from the coordinates of the center and the vertices. The base is a unit sphere which is scaled with the radius of the planet. The default planet radius is 6371000 meter. The parameter radius or the environment variable PLANET_RADIUS can be used to change the default. Depending on the chosen operator the grid cell area or weights are written to the output stream.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{gridarea     Grid cell area
             Writes the grid cell area to the output stream. If the grid cell area have to
             be computed it is scaled with the planet radius to square meters.
gridweights  Grid cell weights
             Writes the grid cell area weights to the output stream.
}\if{html}{\out{</div>}}
}
