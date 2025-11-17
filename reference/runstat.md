# Running statistics

This module computes running statistical values over a selected number
of timesteps. Depending on the chosen operator the minimum, maximum,
range, sum, average, variance or standard deviation of a selected number
of consecutive timesteps read from infile is written to outfile. The
time of outfile is determined by the time in the middle of all
contributing timesteps of infile. This can be change with the CDO option
–timestat_date \<first\|middle\|last\>.

## Usage

``` r
cdo_runavg(ifile, nts = NULL, ofile = NULL)

cdo_runmax(ifile, nts = NULL, ofile = NULL)

cdo_runmean(ifile, nts = NULL, ofile = NULL)

cdo_runmin(ifile, nts = NULL, ofile = NULL)

cdo_runrange(ifile, nts = NULL, ofile = NULL)

cdo_runstd(ifile, nts = NULL, ofile = NULL)

cdo_runstd1(ifile, nts = NULL, ofile = NULL)

cdo_runsum(ifile, nts = NULL, ofile = NULL)

cdo_runvar(ifile, nts = NULL, ofile = NULL)

cdo_runvar1(ifile, nts = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

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

## Details

    runmin    Running minimum
              o(t+(nts-1)/2,x) = min\{i(t,x), i(t+1,x), ..., i(t+nts-1,x)\}
    runmax    Running maximum
              o(t+(nts-1)/2,x) = max\{i(t,x), i(t+1,x), ..., i(t+nts-1,x)\}
    runrange  Running range
              o(t+(nts-1)/2,x) = range\{i(t,x), i(t+1,x), ..., i(t+nts-1,x)\}
    runsum    Running sum
              o(t+(nts-1)/2,x) = sum\{i(t,x), i(t+1,x), ..., i(t+nts-1,x)\}
    runmean   Running mean
              o(t+(nts-1)/2,x) = mean\{i(t,x), i(t+1,x), ..., i(t+nts-1,x)\}
    runavg    Running average
              o(t+(nts-1)/2,x) = avg\{i(t,x), i(t+1,x), ..., i(t+nts-1,x)\}
    runstd    Running standard deviation
              Normalize by n.

              o(t+(nts-1)/2,x) = std\{i(t,x), i(t+1,x), ..., i(t+nts-1,x)\}
    runstd1   Running standard deviation (n-1)
              Normalize by (n-1).

              o(t+(nts-1)/2,x) = std1\{i(t,x), i(t+1,x), ..., i(t+nts-1,x)\}
    runvar    Running variance
              Normalize by n.

              o(t+(nts-1)/2,x) = var\{i(t,x), i(t+1,x), ..., i(t+nts-1,x)\}
    runvar1   Running variance (n-1)
              Normalize by (n-1).

              o(t+(nts-1)/2,x) = var1\{i(t,x), i(t+1,x), ..., i(t+nts-1,x)\}
