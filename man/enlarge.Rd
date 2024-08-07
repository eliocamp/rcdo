% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cdo-enlarge.R, R/family-enlarge.R
\name{cdo_enlarge}
\alias{cdo_enlarge}
\alias{enlarge}
\title{Enlarge fields}
\usage{
cdo_enlarge(ifile, grid = NULL, ofile = NULL)
}
\arguments{
\item{ifile}{String with the path to the input file.}

\item{grid}{STRING - Target grid description file or name}

\item{ofile}{String with the path to the output file.}
}
\description{
Enlarge all fields of infile to a user given horizontal grid. Normally only the last field element is used for the enlargement. If however the input and output grid are regular lon/lat grids, a zonal or meridional enlargement is possible. Zonal enlargement takes place, if the xsize of the input field is 1 and the ysize of both grids are the same. For meridional enlargement the ysize have to be 1 and the xsize of both grids should have the same size.
}
