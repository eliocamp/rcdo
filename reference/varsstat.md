# Statistical values over all variables

This module computes statistical values over all variables for each
timestep. Depending on the chosen operator the minimum, maximum, range,
sum, average, variance or standard deviation is written to outfile. All
input variables need to have the same gridsize and the same number of
levels.

## Usage

``` r
cdo_varsavg(ifile, ofile = NULL)

cdo_varsmax(ifile, ofile = NULL)

cdo_varsmean(ifile, ofile = NULL)

cdo_varsmin(ifile, ofile = NULL)

cdo_varsrange(ifile, ofile = NULL)

cdo_varsstd(ifile, ofile = NULL)

cdo_varsstd1(ifile, ofile = NULL)

cdo_varssum(ifile, ofile = NULL)

cdo_varsvar(ifile, ofile = NULL)

cdo_varsvar1(ifile, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

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

    varsmin    Variables minimum
               For every timestep the minimum over all variables is computed.
    varsmax    Variables maximum
               For every timestep the maximum over all variables is computed.
    varsrange  Variables range
               For every timestep the range over all variables is computed.
    varssum    Variables sum
               For every timestep the sum over all variables is computed.
    varsmean   Variables mean
               For every timestep the mean over all variables is computed.
    varsavg    Variables average
               For every timestep the average over all variables is computed.
    varsstd    Variables standard deviation
               For every timestep the standard deviation over all variables is computed. Normalize by n.
    varsstd1   Variables standard deviation (n-1)
               For every timestep the standard deviation over all variables is computed. Normalize by (n-1).
    varsvar    Variables variance
               For every timestep the variance over all variables is computed. Normalize by n.
    varsvar1   Variables variance (n-1)
               For every timestep the variance over all variables is computed. Normalize by (n-1).
