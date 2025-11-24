# Summer days index per time period

Let infile be a time series of the daily maximum temperature TX, then
the number of days where TX \> T is counted. The number T is an optional
parameter with default T = 25°C. Note that TX have to be given in units
of Kelvin, whereas T have to be given in degrees Celsius. Parameter is a
comma-separated list of "key=values" pairs.

## Usage

``` r
cdo_eca_su(ifile, T = NULL, freq = NULL, ofile = NULL)

cdo_etccdi_su(ifile, T = NULL, freq = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- T:

  FLOAT - Temperature threshold (unit: °C; default: T = 25°C)

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

    eca_su     Summer days index per time period
               The operator counts over the entire time series.
               The date information of a timestep in outfile is the date of
               the last contributing timestep in infile.
    etccdi_su  Summer days index per time period
               The default output frequency is yearly.
               The date information of a timestep in outfile is the mid of
               the frequency interval.
