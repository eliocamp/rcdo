% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cdo-selzaxisname.R
\name{cdo_selzaxisname}
\alias{cdo_selzaxisname}
\title{selzaxisname}
\usage{
cdo_selzaxisname(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)
}
\arguments{
\item{ifile, ifile1, ifile2}{String with the path to the input file(s).}

\item{parameter, }{STRING - Comma-separated list of parameter identifiers.}

\item{codes, }{INTEGER - Comma-separated list or first/last\link{/inc} range of code numbers.}

\item{names, }{STRING - Comma-separated list of variable names.}

\item{stdnames, }{STRING - Comma-separated list of standard names.}

\item{levels, }{FLOAT - Comma-separated list of vertical levels.}

\item{levidx, }{INTEGER - Comma-separated list or first/last\link{/inc} range of index of levels.}

\item{ltypes, }{INTEGER - Comma-separated list or first/last\link{/inc} range of GRIB level types.}

\item{grids, }{STRING - Comma-separated list of grid names or numbers.}

\item{zaxes, }{STRING - Comma-separated list of z-axis types or numbers.}

\item{zaxisnames, }{STRING - Comma-separated list of z-axis names.}

\item{tabnums, }{INTEGER - Comma-separated list or range of parameter table numbers.}

\item{ofile}{String with the path to the output file.}

\item{obase}{string with the basename of the output files.}
}
\description{
Select fields
}
