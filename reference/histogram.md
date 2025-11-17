# Histogram

This module creates bins for a histogram of the input data. The bins
have to be adjacent and have non-overlapping intervals. The user has to
define the bounds of the bins. The first value is the lower bound and
the second value the upper bound of the first bin. The bounds of the
second bin are defined by the second and third value, aso. Only
2-dimensional input fields are allowed. The output file contains one
vertical level for each of the bins requested.

## Usage

``` r
cdo_histcount(ifile, bounds = NULL, ofile = NULL)

cdo_histfreq(ifile, bounds = NULL, ofile = NULL)

cdo_histmean(ifile, bounds = NULL, ofile = NULL)

cdo_histsum(ifile, bounds = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- bounds:

  FLOAT - Comma-separated list of the bin bounds (-inf and inf valid)

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

    histcount  Histogram count
               Number of elements in the bin range.
    histsum    Histogram sum
               Sum of elements in the bin range.
    histmean   Histogram mean
               Mean of elements in the bin range.
    histfreq   Histogram frequency
               Relative frequency of elements in the bin range.
