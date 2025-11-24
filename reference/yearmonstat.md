# Yearly mean from monthly data

This operator computes the yearly mean of a monthly time series. Each
month is weighted with the number of days per month. The time of outfile
is determined by the time in the middle of all contributing timesteps of
infile. For every adjacent sequence t_1, ...,t_n of timesteps of the
same year it is: o(t,x) = mean{i(t',x), t_1\<t'\<=t_n}

## Usage

``` r
cdo_yearmonmean(ifile, ofile = NULL)
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

Operators that don't return filenames return a character vector with the
string output.
