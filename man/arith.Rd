% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-arith.R, R/op-cdo-add.R,
%   R/op-cdo-atan2.R, R/op-cdo-div.R, R/op-cdo-max.R, R/op-cdo-min.R,
%   R/op-cdo-mul.R, R/op-cdo-sub.R
\name{arith}
\alias{arith}
\alias{cdo_add}
\alias{cdo_atan2}
\alias{cdo_div}
\alias{cdo_max}
\alias{cdo_min}
\alias{cdo_mul}
\alias{cdo_sub}
\title{Arithmetic on two datasets}
\usage{
cdo_add(ifile1, ifile2, ofile = NULL)

cdo_atan2(ifile1, ifile2, ofile = NULL)

cdo_div(ifile1, ifile2, ofile = NULL)

cdo_max(ifile1, ifile2, ofile = NULL)

cdo_min(ifile1, ifile2, ofile = NULL)

cdo_mul(ifile1, ifile2, ofile = NULL)

cdo_sub(ifile1, ifile2, ofile = NULL)
}
\arguments{
\item{ifile1, ifile2}{Strings with the path to the input files.}

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
This module performs simple arithmetic of two datasets. The number of fields in infile1 should be the same as in infile2. The fields in outfile inherit the meta data from infile1. All operators in this module simply process one field after the other from the two input files. Neither the order of the variables nor the date is checked. One of the input files can contain only one timestep or one variable.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{add    Add two fields
       o(t,x) = i_1(t,x) + i_2(t,x)
sub    Subtract two fields
       o(t,x) = i_1(t,x) - i_2(t,x)
mul    Multiply two fields
       o(t,x) = i_1(t,x) * i_2(t,x)
div    Divide two fields
       o(t,x) = i_1(t,x) / i_2(t,x)
min    Minimum of two fields
       o(t,x) = min(i_1(t,x), i_2(t,x))
max    Maximum of two fields
       o(t,x) = max(i_1(t,x), i_2(t,x))
atan2  Arc tangent of two fields
       The atan2 operator calculates the arc tangent of two fields. The result is
       in radians, which is between -PI and PI (inclusive).
       
       o(t,x) = atan2(i_1(t,x), i_2(t,x))
}\if{html}{\out{</div>}}
}
