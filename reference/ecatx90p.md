# Very warm days percent wrt 90th percentile of reference period

Let infile1 be a time series of the daily maximum temperature TX, and
infile2 be the 90th percentile TXn90 of daily maximum temperatures for
any period used as reference. Then the percentage of time where TX \>
TXn90. is calculated. TXn90 is calculated as the 90th percentile of
daily maximum temperatures of a five day window centred on each calendar
day of a given climate reference period. Note that both TX and TXn90
have to be given in the same units. The date information of a timestep
in outfile is the date of the last contributing timestep in infile1.

## Usage

``` r
cdo_eca_tx90p(ifile1, ifile2, ofile = NULL)
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

Operators that don't return filenames return a character vector with the
string output.
