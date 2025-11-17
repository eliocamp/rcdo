# Very cold days percent wrt 10th percentile of reference period

Let infile1 be a time series of the daily maximum temperature TX, and
infile2 be the 10th percentile TXn10 of daily maximum temperatures for
any period used as reference. Then the percentage of time where TX \<
TXn10. is calculated. TXn10 is calculated as the 10th percentile of
daily maximum temperatures of a five day window centred on each calendar
day of a given climate reference period. Note that both TX and TXn10
have to be givenin the same units. The date information of a timestep in
outfile is the date of the last contributing timestep in infile1.

## Usage

``` r
cdo_eca_tx10p(ifile1, ifile2, ofile = NULL)
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
