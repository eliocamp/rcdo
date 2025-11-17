# Cumulative sum over all timesteps

The timcumsum operator calculates the cumulative sum over all timesteps.
Missing values are treated as numeric zero when summing. o(t,x) =
sum{i(t',x), 0\<t'\<=t}

## Usage

``` r
cdo_timcumsum(ifile, ofile = NULL)
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
