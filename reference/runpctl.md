# Running percentile values

This module computes running percentiles over a selected number of
timesteps in infile. The time of outfile is determined by the time in
the middle of all contributing timesteps of infile. This can be change
with the CDO option –timestat_date \<first\|middle\|last\>.
o(t+(nts-1)/2,x) = pth percentile {i(t,x), i(t+1,x), ..., i(t+nts-1,x)}

## Usage

``` r
cdo_runpctl(ifile, p = NULL, nts = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- p:

  FLOAT - Percentile number in {0, ..., 100}

- nts:

  INTEGER - Number of timesteps

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
