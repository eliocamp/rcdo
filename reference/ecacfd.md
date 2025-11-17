# Consecutive frost days index per time period

Let infile be a time series of the daily minimum temperature TN, then
the largest number of consecutive days where TN \< 0 °C is counted. Note
that TN have to be given in units of Kelvin. A further output variable
is the number of frost periods of more than N days. The date information
of a timestep in outfile is the date of the last contributing timestep
in infile.

## Usage

``` r
cdo_eca_cfd(ifile, N = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- N:

  INTEGER - Minimum number of days exceeded (default: N = 5)

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
