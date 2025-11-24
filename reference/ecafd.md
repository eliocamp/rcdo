# Frost days index per time period

Let infile be a time series of the daily minimum temperature TN, then
the number of days where TN \< 0 °C is counted. Note that TN have to be
given in units of Kelvin. Parameter is a comma-separated list of
"key=value" pairs.

## Usage

``` r
cdo_eca_fd(ifile, freq = NULL, ofile = NULL)

cdo_etccdi_fd(ifile, freq = NULL, ofile = NULL)
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

    eca_fd     Frost days index per time period
               The operator counts over the entire time series.
               The date information of a timestep in outfile is the date of
               the last contributing timestep in infile.
    etccdi_fd  Frost days index per time period
               The default output frequency is yearly.
               The date information of a timestep in outfile is the mid of
               the frequency interval.
