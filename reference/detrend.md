# Detrend time series

Every time series in infile is linearly detrended. For every field
element x only those timesteps t belong to the sample S(x), which have
i(t,x) NE miss. It is assumed that all timesteps are equidistant, if
this is not the case set the parameter equal=false.

## Usage

``` r
cdo_detrend(ifile, equal = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- equal:

  BOOL - Set to false for unequal distributed timesteps (default: true)

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.

## Note

This operator has to keep the fields of all timesteps concurrently in
the memory. If not enough memory is available use the operators trend
and subtrend.
