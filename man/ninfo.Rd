% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cdo-ndate.R, R/cdo-ngridpoints.R,
%   R/cdo-ngrids.R, R/cdo-nlevel.R, R/cdo-nmon.R, R/cdo-npar.R, R/cdo-ntime.R,
%   R/cdo-nyear.R, R/family-ninfo.R
\name{cdo_ndate}
\alias{cdo_ndate}
\alias{cdo_ngridpoints}
\alias{cdo_ngrids}
\alias{cdo_nlevel}
\alias{cdo_nmon}
\alias{cdo_npar}
\alias{cdo_ntime}
\alias{cdo_nyear}
\alias{ninfo}
\title{Print the number of parameters, levels or times}
\usage{
cdo_ndate(ifile)

cdo_ngridpoints(ifile)

cdo_ngrids(ifile)

cdo_nlevel(ifile)

cdo_nmon(ifile)

cdo_npar(ifile)

cdo_ntime(ifile)

cdo_nyear(ifile)
}
\arguments{
\item{ifile}{String with the path to the input file.}
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
This module prints the number of variables, levels or times of the input dataset.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{npar         Number of parameters
             Prints the number of parameters (variables).
nlevel       Number of levels
             Prints the number of levels for each variable.
nyear        Number of years
             Prints the number of different years.
nmon         Number of months
             Prints the number of different combinations of years and months.
ndate        Number of dates
             Prints the number of different dates.
ntime        Number of timesteps
             Prints the number of timesteps.
ngridpoints  Number of gridpoints
             Prints the number of gridpoints for each variable.
ngrids       Number of horizontal grids
             Prints the number of horizontal grids.
}\if{html}{\out{</div>}}
}
