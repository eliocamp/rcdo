% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/showattribute.R
\name{Showattribute}
\alias{Showattribute}
\alias{cdo_showattribute}
\alias{cdo_showattsvar}
\title{Show attributes}
\usage{
cdo_showattribute(infile)

cdo_showattsvar(infile)
}
\arguments{
\item{infile}{input file.}
}
\description{
This operator prints attributes of a dataset. If a global attribute should be
printed, the attribute name can be specified as a parameter directly. If a
variable attribute should be printed, the following format is requested:
}
\details{
\preformatted{ showattribute  Show a global attribute or a variable attribute
 showattsvar    Show all variable attributes.
                If var_nm is specified, only for a subset of variables.
}
}
