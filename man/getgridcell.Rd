% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-getgridcell.R, R/op-cdo-gridcellindex.R
\name{getgridcell}
\alias{getgridcell}
\alias{cdo_gridcellindex}
\title{Get grid cell index}
\usage{
cdo_gridcellindex(ifile, lon = NULL, lat = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{lon}{INTEGER - Longitude of the grid cell in degree}

\item{lat}{INTEGER - Latitude of the grid cell in degree}
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
Get the grid cell index of one grid point selected by the parameter lon and lat.
}
