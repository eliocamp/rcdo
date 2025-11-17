# Temporal filling of missing values

This operator fills in temporally missing values. The method parameter
can be used to select the filling method. The default method=nearest
fills missing values with the nearest neighbor value. Other options are
forward and backward to fill missing values by forward or backward
propagation of values. Use the limit parameter to set the maximum number
of consecutive missing values to fill and max_gaps to set the maximum
number of gaps to fill.

## Usage

``` r
cdo_timfillmiss(
  ifile,
  method = NULL,
  limit = NULL,
  max_gaps = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- method:

  STRING - Fill method \[nearest\|linear\|forward\|backward\] (default:
  nearest)

- limit:

  INTEGER - The maximum number of consecutive missing values to fill
  (default: all)

- max_gaps:

  INTEGER - The maximum number of gaps to fill (default: all)

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
