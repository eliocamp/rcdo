# Hourly statistics

This module computes statistical values over timesteps of the same hour.
Depending on the chosen operator the minimum, maximum, range, sum,
average, variance or standard deviation of timesteps of the same hour is
written to outfile. The time of outfile is determined by the time in the
middle of all contributing timesteps of infile. This can be change with
the CDO option –timestat_date \<first\|middle\|last\>.

## Usage

``` r
cdo_houravg(ifile, ofile = NULL)

cdo_hourmax(ifile, ofile = NULL)

cdo_hourmean(ifile, ofile = NULL)

cdo_hourmin(ifile, ofile = NULL)

cdo_hourrange(ifile, ofile = NULL)

cdo_hourstd(ifile, ofile = NULL)

cdo_hourstd1(ifile, ofile = NULL)

cdo_hoursum(ifile, ofile = NULL)

cdo_hourvar(ifile, ofile = NULL)

cdo_hourvar1(ifile, ofile = NULL)
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

Operatos that don't return filenames return a character vector with the
string output.

## Details

    hourmin    Hourly minimum
               For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:

               o(t,x) = min\{i(t',x), t_1&lt;t'&lt;=t_n\}
    hourmax    Hourly maximum
               For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:

               o(t,x) = max\{i(t',x), t_1&lt;t'&lt;=t_n\}
    hourrange  Hourly range
               For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:

               o(t,x) = range\{i(t',x), t_1&lt;t'&lt;=t_n\}
    hoursum    Hourly sum
               For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:

               o(t,x) = sum\{i(t',x), t_1&lt;t'&lt;=t_n\}
    hourmean   Hourly mean
               For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:

               o(t,x) = mean\{i(t',x), t_1&lt;t'&lt;=t_n\}
    houravg    Hourly average
               For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:

               o(t,x) = avg\{i(t',x), t_1&lt;t'&lt;=t_n\}
    hourstd    Hourly standard deviation
               Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:

               o(t,x) = std\{i(t',x), t_1&lt;t'&lt;=t_n\}
    hourstd1   Hourly standard deviation (n-1)
               Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:

               o(t,x) = std1\{i(t',x), t_1&lt;t'&lt;=t_n\}
    hourvar    Hourly variance
               Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:

               o(t,x) = var\{i(t',x), t_1&lt;t'&lt;=t_n\}
    hourvar1   Hourly variance (n-1)
               Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:

               o(t,x) = var1\{i(t',x), t_1&lt;t'&lt;=t_n\}
