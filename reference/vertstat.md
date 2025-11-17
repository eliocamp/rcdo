# Vertical statistics

This module computes statistical values over all levels of the input
variables. According to chosen operator the vertical minimum, maximum,
range, sum, average, variance or standard deviation is written to
outfile.

## Usage

``` r
cdo_vertavg(ifile, weights = NULL, ofile = NULL)

cdo_vertmax(ifile, weights = NULL, ofile = NULL)

cdo_vertmean(ifile, weights = NULL, ofile = NULL)

cdo_vertmin(ifile, weights = NULL, ofile = NULL)

cdo_vertrange(ifile, weights = NULL, ofile = NULL)

cdo_vertstd(ifile, weights = NULL, ofile = NULL)

cdo_vertstd1(ifile, weights = NULL, ofile = NULL)

cdo_vertsum(ifile, weights = NULL, ofile = NULL)

cdo_vertvar(ifile, weights = NULL, ofile = NULL)

cdo_vertvar1(ifile, weights = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- weights:

  BOOL - weights=FALSE disables weighting by layer thickness \[default:
  weights=TRUE\]

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.

## Details

    vertmin    Vertical minimum
               For every gridpoint the minimum over all levels is computed.
    vertmax    Vertical maximum
               For every gridpoint the maximum over all levels is computed.
    vertrange  Vertical range
               For every gridpoint the range over all levels is computed.
    vertsum    Vertical sum
               For every gridpoint the sum over all levels is computed.
    vertmean   Vertical mean
               For every gridpoint the layer weighted mean over all levels is computed.
    vertavg    Vertical average
               For every gridpoint the layer weighted average over all levels is computed.
    vertstd    Vertical standard deviation
               For every gridpoint the standard deviation over all levels is computed. Normalize by n.
    vertstd1   Vertical standard deviation (n-1)
               For every gridpoint the standard deviation over all levels is computed. Normalize by (n-1).
    vertvar    Vertical variance
               For every gridpoint the variance over all levels is computed. Normalize by n.
    vertvar1   Vertical variance (n-1)
               For every gridpoint the variance over all levels is computed. Normalize by (n-1).
