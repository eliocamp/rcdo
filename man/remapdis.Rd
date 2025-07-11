% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-remapdis.R, R/op-cdo-gendis.R,
%   R/op-cdo-remapdis.R
\name{remapdis}
\alias{remapdis}
\alias{cdo_gendis}
\alias{cdo_remapdis}
\title{Distance weighted average remapping}
\usage{
cdo_gendis(ifile, grid = NULL, neighbors = NULL, map3d = NULL, ofile = NULL)

cdo_remapdis(ifile, grid = NULL, neighbors = NULL, map3d = NULL, ofile = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{grid}{STRING - Target grid description file or name}

\item{neighbors}{INTEGER - Number of nearest neighbors [default: 4]}

\item{map3d}{BOOL - Generate all mapfiles of the first 3D field}

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
This module contains operators for an inverse distance weighted average remapping of the four nearest neighbor values of fields between grids in spherical coordinates. The default number of 4 neighbors can be changed with the neighbors parameter.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{remapdis  Distance weighted average remapping
          Performs an inverse distance weighted averaged remapping of the nearest neighbor values on all input fields.
gendis    Generate distance weighted average remap weights
          Generates distance weighted averaged remapping weights of the nearest neighbor values for the first input
          field and writes the result to a file. The format of this file is NetCDF following the SCRIP convention.
          Use the operator remap to apply this remapping weights to a data file with the same source grid.
          Set the parameter map3d=true to generate all mapfiles of the first 3D field with varying masks.
          In this case the mapfiles will be named &lt;outfile&gt;&lt;xxx&gt;.nc. xxx will have five digits with the number of the mapfile.
}\if{html}{\out{</div>}}
}
