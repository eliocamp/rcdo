# Multiyear daily running percentile values

This operator writes running percentile values for each day of year in
infile1 to outfile. A certain percentile is computed for all timesteps
in running windows of which the medium timestep corresponds to a certain
day of year. The algorithm uses histograms with minimum and maximum
bounds given in infile2 and infile3, respectively. The default number of
histogram bins is 101. The default can be overridden by setting the
environment variable CDO_PCTL_NBINS to a different value. The files
infile2 and infile3 should be the result of corresponding ydrunmin and
ydrunmax operations, respectively. The date information in an output
field is the date of the timestep in the middle of the last contributing
running window. Note that the operator have to be applied to a
continuous time series of daily measurements in order to yield
physically meaningful results. Also note that the output time series
begins (nts-1)/2 timesteps after the first timestep of the input time
series and ends (nts-1)/2 timesteps before the last. For input data
which are complete but not continuous, such as time series of daily
measurements for the same month or season within different years, the
operator only yields physically meaningful results if the input time
series does include the (nts-1)/2 days before and after each period of
interest. o(001,x) = pth percentile {i(t,x), i(t+1,x), ...,
i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 001} ... o(366,x) = pth
percentile {i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\]
= 366}

## Usage

``` r
cdo_ydrunpctl(
  ifile1,
  ifile2,
  ifile3,
  p = NULL,
  nts = NULL,
  rm_c = NULL,
  pm_r8 = NULL,
  ofile = NULL
)
```

## Arguments

- ifile1, ifile2, ifile3:

  Strings with the path to the input files.

- p:

  FLOAT - Percentile number in {0, ..., 100}

- nts:

  INTEGER - Number of timesteps

- rm_c:

  STRING - Read method circular

- pm_r8:

  STRING - Percentile method rtype8

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.
