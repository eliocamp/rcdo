% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-gradsdes.R, R/op-cdo-gradsdes.R
\name{gradsdes}
\alias{gradsdes}
\alias{cdo_gradsdes}
\title{GrADS data descriptor file}
\usage{
cdo_gradsdes(ifile, mapversion = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{mapversion}{INTEGER - Format version of the GrADS map file for GRIB1 datasets. Use 1 for a machinespecific version 1 GrADS map file, 2 for a machine independent version 2 GrADS map fileand 4 to support GRIB files >2GB.A version 2 map file can be used only with GrADS version 1.8 or newer.A version 4 map file can be used only with GrADS version 2.0 or newer.The default is 4 for files >2GB, otherwise 2.}
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
Creates a GrADS data descriptor file. Supported file formats are GRIB1, NetCDF, SERVICE, EXTRA and IEG. For GRIB1 files the GrADS map file is also generated. For SERVICE and EXTRA files the grid have to be specified with the CDO option '-g <grid>'. This module takes infile in order to create filenames for the descriptor (infile.ctl) and the map (infile.gmp) file.
}
