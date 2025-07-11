% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-collgrid.R, R/op-cdo-collgrid.R
\name{collgrid}
\alias{collgrid}
\alias{cdo_collgrid}
\title{Collect horizontal grid}
\usage{
cdo_collgrid(ifiles, nx = NULL, names = NULL, ofile = NULL)
}
\arguments{
\item{ifiles}{Character vector with the path to the input files.}

\item{nx}{INTEGER - Number of regions in x direction [default: number of input files]}

\item{names}{STRING - Comma-separated list of variable names [default: all variables]}

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
This operator collects the data of the input files to one output file. All input files need to have the same variables and the same number of timesteps on a different horizonal grid region. If the source regions are on a structured lon/lat grid, all regions together must result in a new structured lat/long grid box. Data on an unstructured grid is concatenated in the order of the input files. The parameter nx needs to be specified only for curvilinear grids.
}
\section{Note}{

This operator needs to open all input files simultaneously. The maximum number of open files depends on the operating system!
}

