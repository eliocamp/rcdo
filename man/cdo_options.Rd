% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cdo-options.R
\name{cdo_options_use}
\alias{cdo_options_use}
\alias{cdo_options_set}
\alias{cdo_options_get}
\alias{cdo_options_clear}
\title{Manage CDO options}
\usage{
cdo_options_use(operation, options)

cdo_options_set(options)

cdo_options_get(options)

cdo_options_clear()
}
\arguments{
\item{operation}{operation to add options to.}

\item{options}{character vector with CDO options.}
}
\description{
Set the options of operations.
}
\details{
\code{cdo_options_use()} takes an operation and adds a set of options to be used
in that operation.
\code{cdo_options_set()} sets the default options that all operations should use
by default. You can retrieve the default options with \code{cdo_options_get()}
or clear all default options with \code{cdo_options_clear()} or \code{cdo_options_set(NULL)}.
}
