% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/family-ensstat.R, R/op-cdo-ensavg.R,
%   R/op-cdo-enskurt.R, R/op-cdo-ensmax.R, R/op-cdo-ensmean.R,
%   R/op-cdo-ensmedian.R, R/op-cdo-ensmin.R, R/op-cdo-enspctl.R,
%   R/op-cdo-ensrange.R, R/op-cdo-ensskew.R, R/op-cdo-ensstd.R,
%   R/op-cdo-ensstd1.R, R/op-cdo-enssum.R, R/op-cdo-ensvar.R, R/op-cdo-ensvar1.R
\name{ensstat}
\alias{ensstat}
\alias{cdo_ensavg}
\alias{cdo_enskurt}
\alias{cdo_ensmax}
\alias{cdo_ensmean}
\alias{cdo_ensmedian}
\alias{cdo_ensmin}
\alias{cdo_enspctl}
\alias{cdo_ensrange}
\alias{cdo_ensskew}
\alias{cdo_ensstd}
\alias{cdo_ensstd1}
\alias{cdo_enssum}
\alias{cdo_ensvar}
\alias{cdo_ensvar1}
\title{Statistical values over an ensemble}
\usage{
cdo_ensavg(ifiles, p = NULL, ofile = NULL)

cdo_enskurt(ifiles, p = NULL, ofile = NULL)

cdo_ensmax(ifiles, p = NULL, ofile = NULL)

cdo_ensmean(ifiles, p = NULL, ofile = NULL)

cdo_ensmedian(ifiles, p = NULL, ofile = NULL)

cdo_ensmin(ifiles, p = NULL, ofile = NULL)

cdo_enspctl(ifiles, p = NULL, ofile = NULL)

cdo_ensrange(ifiles, p = NULL, ofile = NULL)

cdo_ensskew(ifiles, p = NULL, ofile = NULL)

cdo_ensstd(ifiles, p = NULL, ofile = NULL)

cdo_ensstd1(ifiles, p = NULL, ofile = NULL)

cdo_enssum(ifiles, p = NULL, ofile = NULL)

cdo_ensvar(ifiles, p = NULL, ofile = NULL)

cdo_ensvar1(ifiles, p = NULL, ofile = NULL)
}
\arguments{
\item{ifiles}{Character vector with the path to the input files.}

\item{p}{FLOAT - Percentile number in \{0, ..., 100\}}

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
This module computes statistical values over an ensemble of input files. Depending on the chosen operator, the minimum, maximum, range, sum, average, standard deviation, variance, skewness, kurtosis, median or a certain percentile over all input files is written to outfile. All input files need to have the same structure with the same variables. The date information of a timestep in outfile is the date of the first input file.
}
\details{
\if{html}{\out{<div class="sourceCode">}}\preformatted{ensmin     Ensemble minimum
           o(t,x) = min\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
ensmax     Ensemble maximum
           o(t,x) = max\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
ensrange   Ensemble range
           o(t,x) = range\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
enssum     Ensemble sum
           o(t,x) = sum\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
ensmean    Ensemble mean
           o(t,x) = mean\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
ensavg     Ensemble average
           o(t,x) = avg\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
ensstd     Ensemble standard deviation
           Normalize by n.
           
           o(t,x) = std\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
ensstd1    Ensemble standard deviation (n-1)
           Normalize by (n-1).
           
           o(t,x) = std1\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
ensvar     Ensemble variance
           Normalize by n.
           
           o(t,x) = var\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
ensvar1    Ensemble variance (n-1)
           Normalize by (n-1).
           
           o(t,x) = var1\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
ensskew    Ensemble skewness
           o(t,x) = skew\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
enskurt    Ensemble kurtosis
           o(t,x) = kurt\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
ensmedian  Ensemble median
           o(t,x) = median\\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
enspctl    Ensemble percentiles
           o(t,x) = pth percentile \\\{i1(t,x), i2(t,x), ..., in(t,x)\\\}
}\if{html}{\out{</div>}}
}
\section{Note}{

Operators of this module need to open all input files simultaneously. The maximum number of open files depends on the operating system!
}

