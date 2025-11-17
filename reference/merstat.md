# Meridional statistics

This module computes meridional statistical values of the input fields.
Depending on the chosen operator, the meridional minimum, maximum,
range, sum, average, standard deviation, variance, skewness, kurtosis,
median or a certain percentile of the field is written to outfile.
Operators of this module require all variables on the same regular
lon/lat grid.

## Usage

``` r
cdo_meravg(ifile, p = NULL, ofile = NULL)

cdo_merkurt(ifile, p = NULL, ofile = NULL)

cdo_mermax(ifile, p = NULL, ofile = NULL)

cdo_mermean(ifile, p = NULL, ofile = NULL)

cdo_mermedian(ifile, p = NULL, ofile = NULL)

cdo_mermin(ifile, p = NULL, ofile = NULL)

cdo_merpctl(ifile, p = NULL, ofile = NULL)

cdo_merrange(ifile, p = NULL, ofile = NULL)

cdo_merskew(ifile, p = NULL, ofile = NULL)

cdo_merstd(ifile, p = NULL, ofile = NULL)

cdo_merstd1(ifile, p = NULL, ofile = NULL)

cdo_mersum(ifile, p = NULL, ofile = NULL)

cdo_mervar(ifile, p = NULL, ofile = NULL)

cdo_mervar1(ifile, p = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- p:

  FLOAT - Percentile number in {0, ..., 100}

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

    mermin     Meridional minimum
               For every longitude the minimum over all latitudes is computed.
    mermax     Meridional maximum
               For every longitude the maximum over all latitudes is computed.
    merrange   Meridional range
               For every longitude the range over all latitudes is computed.
    mersum     Meridional sum
               For every longitude the sum over all latitudes is computed.
    mermean    Meridional mean
               For every longitude the area weighted mean over all latitudes is computed.
    meravg     Meridional average
               For every longitude the area weighted average over all latitudes is computed.
    merstd     Meridional standard deviation
               For every longitude the standard deviation over all latitudes is computed. Normalize by n.
    merstd1    Meridional standard deviation (n-1)
               For every longitude the standard deviation over all latitudes is computed. Normalize by (n-1).
    mervar     Meridional variance
               For every longitude the variance over all latitudes is computed. Normalize by n.
    mervar1    Meridional variance (n-1)
               For every longitude the variance over all latitudes is computed. Normalize by (n-1).
    merskew    Meridional skewness
               For every longitude the skewness over all latitudes is computed.
    merkurt    Meridional kurtosis
               For every longitude the kurtosis over all latitudes is computed.
    mermedian  Meridional median
               For every longitude the median over all latitudes is computed.
    merpctl    Meridional percentiles
               For every longitude the pth percentile over all latitudes is computed.
