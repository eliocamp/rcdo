% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cdo-regres.R, R/family-regres.R
\name{cdo_regres}
\alias{cdo_regres}
\alias{regres}
\title{Regression}
\usage{
cdo_regres(ifile, equal = NULL, ofile = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{equal}{BOOL - Set to false for unequal distributed timesteps (default: true)}

\item{ofile}{String with the path to the output file.}
}
\description{
The values of the input file infile are assumed to be distributed as N(a+b*t,S^2) with unknown a, b and S^2. This operator estimates the parameter b. For every field element x only those timesteps t belong to the sample S(x), which have i(t,x) NE miss. It is assumed that all timesteps are equidistant, if this is not the case set the parameter equal=false.
}
