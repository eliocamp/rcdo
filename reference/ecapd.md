# Precipitation days index per time period

Let infile be a time series of the daily precipitation amount RR in
\[mm\] (or alternatively in \[kg m-2\]), then the number of days where
RR is at least x mm is counted. eca_r10mm and eca_r20mm are specific ECA
operators with a daily precipitation amount of 10 and 20 mm
respectively. The date information of a timestep in outfile is the date
of the last contributing timestep in infile except for the etccdi
operator. Parameter is a comma-separated list of "key=values" pairs.

## Usage

``` r
cdo_eca_pd(ifile, x = NULL, freq = NULL, ofile = NULL)

cdo_eca_r10mm(ifile, x = NULL, freq = NULL, ofile = NULL)

cdo_eca_r20mm(ifile, x = NULL, freq = NULL, ofile = NULL)

cdo_etccdi_r1mm(ifile, x = NULL, freq = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- x:

  FLOAT - Daily precipitation amount threshold in \[mm\]

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

    eca_pd       Precipitation days index per time period
                 Generic ECA operator with daily precipitation sum exceeding x mm.
    eca_r10mm    Heavy precipitation days index per time period
                 Specific ECA operator with daily precipitation sum exceeding 10 mm.
    eca_r20mm    Very heavy precipitation days index per time period
                 Specific ECA operator with daily precipitation sum exceeding 20 mm.
    etccdi_r1mm  Precipitation days index per time period
                 The default output frequency is yearly.
                 The date information of a timestep in outfile is the mid of
                 the frequency interval.

## Note

Precipitation rates in \[mm/s\] have to be converted to precipitation
amounts (multiply with 86400 s). Apart from metadata information the
result of eca_pd,1 and eca_rr1 is the same.
