% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-info.R, R/op-cdo-cinfo.R,
%   R/op-cdo-info.R, R/op-cdo-infon.R, R/op-cdo-map.R
\name{info}
\alias{info}
\alias{cdo_cinfo}
\alias{cdo_info}
\alias{cdo_infon}
\alias{cdo_map}
\title{Information and simple statistics}
\usage{
cdo_cinfo(ifiles)

cdo_info(ifiles)

cdo_infon(ifiles)

cdo_map(ifiles)
}
\arguments{
\item{ifiles}{Character vector with the path to the input files.}
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
This module writes information about the structure and contents for each field of all input files to standard output. A field is a horizontal layer of a data variable. All input files need to have the same structure with the same variables on different timesteps. The information displayed depends on the chosen operator.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{info   Dataset information listed by parameter identifier
       Prints information and simple statistics for each field of all input datasets.
       For each field the operator prints one line with the following elements:
       - Date and Time
       - Level, Gridsize and number of Missing values
       - Minimum, Mean and Maximum \\\\
       The mean value is computed without the use of area weights!
       - Parameter identifier
infon  Dataset information listed by parameter name
       The same as operator info but using the name instead of the
       identifier to label the parameter.
cinfo  Compact information listed by parameter name
       cinfo is a compact version of infon. It prints the minimum, mean and maximum value for each variable across all layers and time steps.
map    Dataset information and simple map
       Prints information, simple statistics and a map for each field of all input
       datasets. The map will be printed only for fields on a regular lon/lat grid.
}\if{html}{\out{</div>}}
}
