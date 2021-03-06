% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/arith.R
\name{Arith}
\alias{Arith}
\alias{cdo_add}
\alias{cdo_atan2}
\alias{cdo_div}
\alias{cdo_max}
\alias{cdo_min}
\alias{cdo_mul}
\alias{cdo_sub}
\title{Arithmetic on two datasets}
\usage{
cdo_add(infile1, infile2, outfile = NULL)

cdo_add(infile1, infile2, outfile = NULL)

cdo_atan2(infile1, infile2, outfile = NULL)

cdo_atan2(infile1, infile2, outfile = NULL)

cdo_div(infile1, infile2, outfile = NULL)

cdo_div(infile1, infile2, outfile = NULL)

cdo_max(infile1, infile2, outfile = NULL)

cdo_max(infile1, infile2, outfile = NULL)

cdo_min(infile1, infile2, outfile = NULL)

cdo_min(infile1, infile2, outfile = NULL)

cdo_mul(infile1, infile2, outfile = NULL)

cdo_mul(infile1, infile2, outfile = NULL)

cdo_sub(infile1, infile2, outfile = NULL)

cdo_sub(infile1, infile2, outfile = NULL)
}
\arguments{
\item{infile1, infile2}{input files.}

\item{outfile}{output file.}
}
\description{
This module performs simple arithmetic of two datasets. The number of fields in
infile1 should be the same as in infile2. The fields in outfile inherit the
meta data from infile1. One of the input files can contain only one timestep or
one variable.
}
\details{
\preformatted{ add    Add two fields
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
}
}
