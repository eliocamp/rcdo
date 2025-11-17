# Time range percentile values

This operator computes percentile values over a selected number of
timesteps in infile1. The algorithm uses histograms with minimum and
maximum bounds given in infile2 and infile3, respectively. The default
number of histogram bins is 101. The default can be overridden by
setting the environment variable CDO_PCTL_NBINS to a different value.
The files infile2 and infile3 should be the result of corresponding
timselmin and timselmax operations, respectively. The time of outfile is
determined by the time in the middle of all contributing timesteps of
infile1. This can be change with the CDO option –timestat_date
\<first\|middle\|last\>. For every adjacent sequence t1, ...., tn of
timesteps of the same selected time range it is: o(t,x) = pth percentile
{i(t',x), t1 \< t' \<= tn}

## Usage

``` r
cdo_timselpctl(
  ifile1,
  ifile2,
  ifile3,
  p = NULL,
  nsets = NULL,
  noffset = NULL,
  nskip = NULL,
  ofile = NULL
)
```

## Arguments

- ifile1, ifile2, ifile3:

  Strings with the path to the input files.

- p:

  FLOAT - Percentile number in {0, ..., 100}

- nsets:

  INTEGER - Number of input timesteps for each output timestep

- noffset:

  INTEGER - Number of input timesteps skipped before the first timestep
  range (optional)

- nskip:

  INTEGER - Number of input timesteps skipped between timestep ranges
  (optional)

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
