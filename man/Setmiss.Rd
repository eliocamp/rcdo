% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setmiss.R
\name{Setmiss}
\alias{Setmiss}
\alias{cdo_setctomiss}
\alias{cdo_setmisstoc}
\alias{cdo_setmisstodis}
\alias{cdo_setmisstonn}
\alias{cdo_setmissval}
\alias{cdo_setrtomiss}
\alias{cdo_setvrange}
\title{Set missing value}
\usage{
cdo_setctomiss(infile, outfile = NULL)

cdo_setmisstoc(infile, outfile = NULL)

cdo_setmisstodis(infile, outfile = NULL)

cdo_setmisstonn(infile, outfile = NULL)

cdo_setmissval(infile, outfile = NULL)

cdo_setrtomiss(infile, outfile = NULL)

cdo_setvrange(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
This module sets part of a field to missing value or missing values to a
constant value. Which part of the field is set depends on the chosen operator.
}
\details{
\preformatted{ setmissval    Set a new missing value
                        / newmiss   if i(t,x) EQ miss
               o(t,x) = 
                        \\\\ i(t,x)    if i(t,x) NE miss
 setctomiss    Set constant to missing value
                        / miss   if i(t,x) EQ c
               o(t,x) = 
                        \\\\ i(t,x) if i(t,x) NE c
 setmisstoc    Set missing value to constant
                        / c      if i(t,x) EQ miss
               o(t,x) = 
                        \\\\ i(t,x) if i(t,x) NE miss
 setrtomiss    Set range to missing value
                        / miss   if i(t,x) GE rmin AND i(t,x) LE rmax
               o(t,x) = 
                        \\\\ i(t,x) if i(t,x) LT rmin OR  i(t,x) GT rmax
 setvrange     Set valid range
                        / miss   if i(t,x) LT rmin OR  i(t,x) GT rmax
               o(t,x) = 
                        \\\\ i(t,x) if i(t,x) GE rmin AND i(t,x) LE rmax
 setmisstonn   Set missing value to nearest neighbor
               Set all missing values to the nearest non missing value.
                        / i(t,y) if i(t,x) EQ miss AND i(t,y) NE miss
               o(t,x) = 
                        \\\\ i(t,x) if i(t,x) NE miss
 setmisstodis  Set missing value to distance-weighted average
               Set all missing values to the distance-weighted average of the nearest non missing values.
               The default number of nearest neighbors is 4.
}
}
