% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/enlarge.R
\name{Enlarge}
\alias{Enlarge}
\alias{cdo_enlarge}
\title{Enlarge fields}
\usage{
cdo_enlarge(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
Enlarge all fields of infile to a user given horizontal grid. Normally only the
last field element is used for the enlargement. If however the input and output
grid are regular lon/lat grids, a zonal or meridional enlargement is possible.
Zonal enlargement takes place, if the xsize of the input field is 1 and the
ysize of both grids are the same. For meridional enlargement the ysize have to
be 1 and the xsize of both grids should have the same size.
}
\details{
\preformatted{ setclonlatbox  Set a longitude/latitude box to constant
                Sets the values of a longitude/latitude box to a constant value. The 
                user has to give the longitudes and latitudes of the edges of the box.
 setcindexbox   Set an index box to constant
                Sets the values of an index box to a constant value. The user has to 
                give the indexes of the edges of the box. The index of the left edge 
                can be greater than the one of the right edge.
}
}
