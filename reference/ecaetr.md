# Intraperiod extreme temperature range

Let infile1 and infile2 be time series of thr maximum and minimum
temperature TX and TN, respectively. Then the extreme temperature range
is the difference of the maximum of TX and the minimum of TN. Note that
TX and TN have to be given in the same units. The date information of a
timestep in outfile is the date of the last contributing timesteps in
infile1 and infile2.

## Usage

``` r
cdo_eca_etr(ifile1, ifile2, ofile = NULL)
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
