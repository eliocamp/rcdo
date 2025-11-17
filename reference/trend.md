# Trend of time series

The values of the input file infile are assumed to be distributed as
N(a+b\*t,S^2) with unknown a, b and S^2. This operator estimates the
parameter a and b. For every field element x only those timesteps t
belong to the sample S(x), which have i(t,x) NE miss. Thus the
estimation for a is stored in outfile1 and that for b is stored in
outfile2. To subtract the trend from the data see operator subtrend. It
is assumed that all timesteps are equidistant, if this is not the case
set the parameter equal=false.

## Usage

``` r
cdo_trend(ifile, equal = NULL, ofile1 = NULL, ofile2 = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- equal:

  BOOL - Set to false for unequal distributed timesteps (default: true)

- ofile1, ofile2:

  Strings with the path to the output files.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
