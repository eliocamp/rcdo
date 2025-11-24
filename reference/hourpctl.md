# Hourly percentile values

This operator computes percentiles over all timesteps of the same hour
in infile1. The algorithm uses histograms with minimum and maximum
bounds given in infile2 and infile3, respectively. The default number of
histogram bins is 101. The default can be overridden by defining the
environment variable CDO_PCTL_NBINS. The files infile2 and infile3
should be the result of corresponding hourmin and hourmax operations,
respectively. The time of outfile is determined by the time in the
middle of all contributing timesteps of infile1. This can be change with
the CDO option –timestat_date \<first\|middle\|last\>. For every
adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:
o(t,x) = pth percentile {i(t',x), t_1\<t'\<=t_n}

## Usage

``` r
cdo_hourpctl(ifile1, ifile2, ifile3, p = NULL, ofile = NULL)
```

## Arguments

- ifile1, ifile2, ifile3:

  Strings with the path to the input files.

- p:

  FLOAT - Percentile number in {0, ..., 100}

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.
