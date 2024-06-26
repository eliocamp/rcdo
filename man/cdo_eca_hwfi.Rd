% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cdo-eca_hwfi.R
\name{cdo_eca_hwfi}
\alias{cdo_eca_hwfi}
\title{eca_hwfi}
\usage{
cdo_eca_hwfi(ifile1, ifile2, nday = NULL, freq = NULL, ofile = NULL)
}
\arguments{
\item{nday, }{INTEGER - Number of consecutive days (default: nday = 6)}

\item{freq, }{STRING - Output frequency (year, month)}

\item{ofile}{String with the path to the output file.}

\item{ifile, ifile1, ifile2}{String with the path to the input file(s).}

\item{obase}{string with the basename of the output files.}
}
\description{
Warm spell days index wrt 90th percentile of reference period
}
