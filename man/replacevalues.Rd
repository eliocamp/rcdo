% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-replacevalues.R, R/op-cdo-setrtoc.R,
%   R/op-cdo-setrtoc2.R, R/op-cdo-setvals.R
\name{replacevalues}
\alias{replacevalues}
\alias{cdo_setrtoc}
\alias{cdo_setrtoc2}
\alias{cdo_setvals}
\title{Replace variable values}
\usage{
cdo_setrtoc(
  ifile,
  oldval = NULL,
  newval = NULL,
  rmin = NULL,
  rmax = NULL,
  c = NULL,
  c2 = NULL,
  ofile = NULL
)

cdo_setrtoc2(
  ifile,
  oldval = NULL,
  newval = NULL,
  rmin = NULL,
  rmax = NULL,
  c = NULL,
  c2 = NULL,
  ofile = NULL
)

cdo_setvals(
  ifile,
  oldval = NULL,
  newval = NULL,
  rmin = NULL,
  rmax = NULL,
  c = NULL,
  c2 = NULL,
  ofile = NULL
)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{oldval}{FLOAT - Pairs of old and new values}

\item{newval}{FLOAT - Pairs of old and new values}

\item{rmin}{FLOAT - Lower bound}

\item{rmax}{FLOAT - Upper bound}

\item{c}{FLOAT - New value - inside range}

\item{c2}{FLOAT - New value - outside range}

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
This module replaces old variable values with new values, depending on the operator.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{setvals   Set list of old values to new values
          Supply a list of n pairs of old and new values.
setrtoc   Set range to constant
                   / c      if i(t,x) GE rmin AND i(t,x) LE rmax
          o(t,x) = 
                   \\\\ i(t,x) if i(t,x) LT rmin AND i(t,x) GT rmax
setrtoc2  Set range to constant others to constant2
                   / c      if i(t,x) GE rmin AND i(t,x) LE rmax
          o(t,x) = 
                   \\\\ c2     if i(t,x) LT rmin AND i(t,x) GT rmax
}\if{html}{\out{</div>}}
}
