% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setbox.R
\name{Setbox}
\alias{Setbox}
\alias{cdo_setcindexbox}
\alias{cdo_setclonlatbox}
\title{Set a box to constant}
\usage{
cdo_setcindexbox(infile, outfile = NULL)

cdo_setclonlatbox(infile, outfile = NULL)
}
\arguments{
\item{infile}{input file.}

\item{outfile}{output file.}
}
\description{
Sets a box of the rectangularly understood field to a constant value. The
elements outside the box are untouched, the elements inside are set to the
given constant. All input fields need to have the same horizontal grid.
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
