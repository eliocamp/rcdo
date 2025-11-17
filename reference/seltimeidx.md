# Select timestep by index

Selects field elements from infile2 according to a timestep index from
infile1. The index of the timestep in infile1 should be the result of
corresponding timminidx or timmaxidx operations, respectively.

## Usage

``` r
cdo_seltimeidx(ifile1, ifile2, ofile = NULL)
```

## Arguments

- ifile1, ifile2:

  Strings with the path to the input files.

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
