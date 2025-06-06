% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cdo-setcode.R, R/cdo-setcodetab.R,
%   R/cdo-setlevel.R, R/cdo-setltype.R, R/cdo-setmaxsteps.R, R/cdo-setname.R,
%   R/cdo-setparam.R, R/cdo-setunit.R, R/family-set.R
\name{cdo_setcode}
\alias{cdo_setcode}
\alias{cdo_setcodetab}
\alias{cdo_setlevel}
\alias{cdo_setltype}
\alias{cdo_setmaxsteps}
\alias{cdo_setname}
\alias{cdo_setparam}
\alias{cdo_setunit}
\alias{set}
\title{Set field info}
\usage{
cdo_setcode(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setcodetab(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setlevel(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setltype(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setmaxsteps(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setname(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setparam(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setunit(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{table}{STRING - Parameter table file or name}

\item{code}{INTEGER - Code number}

\item{param}{STRING - Parameter identifier (GRIB1: code[.tabnum]; GRIB2: num[.cat[.dis]])}

\item{name}{STRING - Variable name}

\item{level}{FLOAT - New level}

\item{ltype}{INTEGER - GRIB level type}

\item{maxsteps}{INTEGER - Maximum number of timesteps}

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
This module sets some field information. Depending on the chosen operator the parameter table, code number, parameter identifier, variable name or level is set.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{setcodetab   Set parameter code table
             Sets the parameter code table for all variables.
setcode      Set code number
             Sets the code number for all variables to the same given value.
setparam     Set parameter identifier
             Sets the parameter identifier of the first variable.
setname      Set variable name
             Sets the name of the first variable.
setunit      Set variable unit
             Sets the unit of the first variable.
setlevel     Set level
             Sets the first level of all variables.
setltype     Set GRIB level type
             Sets the GRIB level type of all variables.
setmaxsteps  Set max timesteps
             Sets maximum number of timesteps
}\if{html}{\out{</div>}}
}
