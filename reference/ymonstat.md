# Multiyear monthly statistics

This module computes statistical values of each month of year. Depending
on the chosen operator the minimum, maximum, range, sum, average,
variance or standard deviation of each month of year in infile is
written to outfile. The date information in an output field is the date
of the last contributing input field. This can be change with the CDO
option –timestat_date \<first\|middle\|last\>.

## Usage

``` r
cdo_ymonavg(ifile, ofile = NULL)

cdo_ymonmax(ifile, ofile = NULL)

cdo_ymonmean(ifile, ofile = NULL)

cdo_ymonmin(ifile, ofile = NULL)

cdo_ymonrange(ifile, ofile = NULL)

cdo_ymonstd(ifile, ofile = NULL)

cdo_ymonstd1(ifile, ofile = NULL)

cdo_ymonsum(ifile, ofile = NULL)

cdo_ymonvar(ifile, ofile = NULL)

cdo_ymonvar1(ifile, ofile = NULL)
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

    ymonmin    Multi-year monthly minimum
               o(01,x) = min\{i(t,x), month(i(t)) = 01\}
                                ...
               o(12,x) = min\{i(t,x), month(i(t)) = 12\}
    ymonmax    Multi-year monthly maximum
               o(01,x) = max\{i(t,x), month(i(t)) = 01\}
                                ...
               o(12,x) = max\{i(t,x), month(i(t)) = 12\}
    ymonrange  Multi-year monthly range
               o(01,x) = range\{i(t,x), month(i(t)) = 01\}
                                ...
               o(12,x) = range\{i(t,x), month(i(t)) = 12\}
    ymonsum    Multi-year monthly sum
               o(01,x) = sum\{i(t,x), month(i(t)) = 01\}
                                ...
               o(12,x) = sum\{i(t,x), month(i(t)) = 12\}
    ymonmean   Multi-year monthly mean
               o(01,x) = mean\{i(t,x), month(i(t)) = 01\}
                                ...
               o(12,x) = mean\{i(t,x), month(i(t)) = 12\}
    ymonavg    Multi-year monthly average
               o(01,x) = avg\{i(t,x), month(i(t)) = 01\}
                                ...
               o(12,x) = avg\{i(t,x), month(i(t)) = 12\}
    ymonstd    Multi-year monthly standard deviation
               Normalize by n.

               o(01,x) = std\{i(t,x), month(i(t)) = 01\}
                                ...
               o(12,x) = std\{i(t,x), month(i(t)) = 12\}
    ymonstd1   Multi-year monthly standard deviation (n-1)
               Normalize by (n-1).

               o(01,x) = std1\{i(t,x), month(i(t)) = 01\}
                                ...
               o(12,x) = std1\{i(t,x), month(i(t)) = 12\}
    ymonvar    Multi-year monthly variance
               Normalize by n.

               o(01,x) = var\{i(t,x), month(i(t)) = 01\}
                                ...
               o(12,x) = var\{i(t,x), month(i(t)) = 12\}
    ymonvar1   Multi-year monthly variance (n-1)
               Normalize by (n-1).

               o(01,x) = var1\{i(t,x), month(i(t)) = 01\}
                                ...
               o(12,x) = var1\{i(t,x), month(i(t)) = 12\}
