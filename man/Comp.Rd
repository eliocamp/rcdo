% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/comp.R
\name{Comp}
\alias{Comp}
\alias{cdo_eq}
\alias{cdo_ge}
\alias{cdo_gt}
\alias{cdo_le}
\alias{cdo_lt}
\alias{cdo_ne}
\title{Comparison of two fields}
\usage{
cdo_eq(infile1, infile2, outfile = NULL)

cdo_eq(infile1, infile2, outfile = NULL)

cdo_ge(infile1, infile2, outfile = NULL)

cdo_ge(infile1, infile2, outfile = NULL)

cdo_gt(infile1, infile2, outfile = NULL)

cdo_gt(infile1, infile2, outfile = NULL)

cdo_le(infile1, infile2, outfile = NULL)

cdo_le(infile1, infile2, outfile = NULL)

cdo_lt(infile1, infile2, outfile = NULL)

cdo_lt(infile1, infile2, outfile = NULL)

cdo_ne(infile1, infile2, outfile = NULL)

cdo_ne(infile1, infile2, outfile = NULL)
}
\arguments{
\item{infile1, infile2}{input files.}

\item{outfile}{output file.}
}
\description{
This module compares two datasets field by field. The resulting field is a mask
containing 1 if the comparison is true and 0 if not. The number of fields in
infile1 should be the same as in infile2. One of the input files can contain
only one timestep or one field. The fields in outfile inherit the meta data
from infile1 or infile2. The type of comparison depends on the chosen operator.
}
\details{
\preformatted{ eq  Equal
               /   1   if i_1(t,x) EQ i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
     o(t,x) = <    0   if i_1(t,x) NE i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
               \\\\  miss if i_1(t,x) EQ miss      OR   i_2(t,x) EQ miss
 ne  Not equal
               /   1   if i_1(t,x) NE i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
     o(t,x) = <    0   if i_1(t,x) EQ i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
               \\\\  miss if i_1(t,x) EQ miss      OR   i_2(t,x) EQ miss
 le  Less equal
               /   1   if i_1(t,x) LE i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
     o(t,x) = <    0   if i_1(t,x) GT i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
               \\\\  miss if i_1(t,x) EQ miss      OR   i_2(t,x) EQ miss
 lt  Less than
               /   1   if i_1(t,x) LT i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
     o(t,x) = <    0   if i_1(t,x) GE i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
               \\\\  miss if i_1(t,x) EQ miss      OR   i_2(t,x) EQ miss
 ge  Greater equal
               /   1   if i_1(t,x) GE i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
     o(t,x) = <    0   if i_1(t,x) LT i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
               \\\\  miss if i_1(t,x) EQ miss      OR   i_2(t,x) EQ miss
 gt  Greater than
               /   1   if i_1(t,x) GT i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
     o(t,x) = <    0   if i_1(t,x) LE i_2(t,x)  AND  i_1(t,x),i_2(t,x) NE miss
               \\\\  miss if i_1(t,x) EQ miss      OR   i_2(t,x) EQ miss
}
}
