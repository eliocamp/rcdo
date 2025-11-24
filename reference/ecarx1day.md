# Highest one day precipitation amount per time period

Let infile be a time series of the daily precipitation amount RR, then
the maximum of RR is written to outfile. If the optional parameter mode
is set to 'm' the maximum daily precipitation amounts are determined for
each month. Parameter is a comma-separated list of "key=values" pairs.

## Usage

``` r
cdo_eca_rx1day(ifile, freq = NULL, ofile = NULL)

cdo_etccdi_rx1day(ifile, freq = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- freq:

  STRING - Output frequency (year, month)

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operators that don't return filenames return a character vector with the
string output.

## Details

    eca_rx1day     Highest one day precipitation amount per time period
                   The operator counts over the entire time series.
                   The date information of a timestep in outfile is the date of
                   the last contributing timestep in infile.
    etccdi_rx1day  Maximum 1-day Precipitation
                   The default output frequency is yearly.
                   The date information of a timestep in outfile is the mid of
                   the frequency interval.
