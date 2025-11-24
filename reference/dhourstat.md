# Multiday hourly statistics

This module computes statistical values of each hour of day. Depending
on the chosen operator the minimum, maximum, range, sum, average,
variance or standard deviation of each hour of day in infile is written
to outfile. The date information in an output field is the date of the
last contributing input field.

## Usage

``` r
cdo_dhouravg(ifile, ofile = NULL)

cdo_dhourmax(ifile, ofile = NULL)

cdo_dhourmean(ifile, ofile = NULL)

cdo_dhourmin(ifile, ofile = NULL)

cdo_dhourrange(ifile, ofile = NULL)

cdo_dhourstd(ifile, ofile = NULL)

cdo_dhourstd1(ifile, ofile = NULL)

cdo_dhoursum(ifile, ofile = NULL)

cdo_dhourvar(ifile, ofile = NULL)

cdo_dhourvar1(ifile, ofile = NULL)
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

Operators that don't return filenames return a character vector with the
string output.

## Details

    dhourmin    Multi-day hourly minimum
                o(01,x) = min\{i(t,x), day(i(t)) = 01\}
                                 ...
                o(24,x) = min\{i(t,x), day(i(t)) = 24\}
    dhourmax    Multi-day hourly maximum
                o(01,x) = max\{i(t,x), day(i(t)) = 01\}
                                 ...
                o(24,x) = max\{i(t,x), day(i(t)) = 24\}
    dhourrange  Multi-day hourly range
                o(01,x) = range\{i(t,x), day(i(t)) = 01\}
                                 ...
                o(24,x) = range\{i(t,x), day(i(t)) = 24\}
    dhoursum    Multi-day hourly sum
                o(01,x) = sum\{i(t,x), day(i(t)) = 01\}
                                 ...
                o(24,x) = sum\{i(t,x), day(i(t)) = 24\}
    dhourmean   Multi-day hourly mean
                o(01,x) = mean\{i(t,x), day(i(t)) = 01\}
                                 ...
                o(24,x) = mean\{i(t,x), day(i(t)) = 24\}
    dhouravg    Multi-day hourly average
                o(01,x) = avg\{i(t,x), day(i(t)) = 01\}
                                 ...
                o(24,x) = avg\{i(t,x), day(i(t)) = 24\}
    dhourstd    Multi-day hourly standard deviation
                Normalize by n.

                o(01,x) = std\{i(t,x), day(i(t)) = 01\}
                                 ...
                o(24,x) = std\{i(t,x), day(i(t)) = 24\}
    dhourstd1   Multi-day hourly standard deviation (n-1)
                Normalize by (n-1).

                o(01,x) = std1\{i(t,x), day(i(t)) = 01\}
                                 ...
                o(24,x) = std1\{i(t,x), day(i(t)) = 24\}
    dhourvar    Multi-day hourly variance
                Normalize by n.

                o(01,x) = var\{i(t,x), day(i(t)) = 01\}
                                 ...
                o(24,x) = var\{i(t,x), day(i(t)) = 24\}
    dhourvar1   Multi-day hourly variance (n-1)
                Normalize by (n-1).

                o(01,x) = var1\{i(t,x), day(i(t)) = 01\}
                                 ...
                o(24,x) = var1\{i(t,x), day(i(t)) = 24\}
