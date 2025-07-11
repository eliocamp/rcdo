% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-merge.R, R/op-cdo-merge.R,
%   R/op-cdo-mergetime.R
\name{merge}
\alias{merge}
\alias{cdo_merge}
\alias{cdo_mergetime}
\title{Merge datasets}
\usage{
cdo_merge(ifiles, skip_same_time = NULL, names = NULL, ofile = NULL)

cdo_mergetime(ifiles, skip_same_time = NULL, names = NULL, ofile = NULL)
}
\arguments{
\item{ifiles}{Character vector with the path to the input files.}

\item{skip_same_time}{BOOL - Skips all consecutive timesteps with a double entry of the same timestamp.}

\item{names}{STRING - Fill missing variable names with missing values (union) or use the intersection (intersect).}

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
This module reads datasets from several input files, merges them and writes the resulting dataset to outfile.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{merge      Merge datasets with different fields
           Merges time series of different fields from several input datasets. The number 
           of fields per timestep written to outfile is the sum of the field numbers 
           per timestep in all input datasets. The time series on all input datasets are 
           required to have different fields and the same number of timesteps.
           The fields in each different input file either have to be different variables
           or different levels of the same variable. A mixture of different variables on
           different levels in different input files is not allowed.
mergetime  Merge datasets sorted by date and time
           Merges all timesteps of all input files sorted by date and time.
           All input files need to have the same structure with the same variables on 
           different timesteps. After this operation every input timestep is in outfile 
           and all timesteps are sorted by date and time.
}\if{html}{\out{</div>}}
}
\section{Note}{

Operators of this module need to open all input files simultaneously. The maximum number of open files depends on the operating system!
}

