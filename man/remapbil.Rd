% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-remapbil.R, R/op-cdo-genbil.R,
%   R/op-cdo-remapbil.R
\name{remapbil}
\alias{remapbil}
\alias{cdo_genbil}
\alias{cdo_remapbil}
\title{Bilinear interpolation}
\usage{
cdo_genbil(ifile, grid = NULL, map3d = NULL, ofile = NULL)

cdo_remapbil(ifile, grid = NULL, map3d = NULL, ofile = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{grid}{STRING - Target grid description file or name}

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
This module contains operators for a bilinear remapping of fields between grids in spherical coordinates. The interpolation is based on an adapted SCRIP library version. For a detailed description of the interpolation method see SCRIP. This interpolation method only works on quadrilateral curvilinear source grids.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{remapbil  Bilinear interpolation
          Performs a bilinear interpolation on all input fields.
genbil    Generate bilinear interpolation weights
          Generates bilinear interpolation weights for the first input field and writes the
          result to a file. The format of this file is NetCDF following the SCRIP convention.
          Use the operator remap to apply this remapping weights to a data file with the same source grid.
          Set the parameter map3d=true to generate all mapfiles of the first 3D field with varying masks.
          In this case the mapfiles will be named &lt;outfile&gt;&lt;xxx&gt;.nc. xxx will have five digits with the number of the mapfile.
}\if{html}{\out{</div>}}
}
