# Yearly statistics

This module computes statistical values over timesteps of the same year.
Depending on the chosen operator the minimum, maximum, range, sum,
average, variance or standard deviation of timesteps of the same year is
written to outfile. The time of outfile is determined by the time in the
middle of all contributing timesteps of infile. This can be change with
the CDO option –timestat_date \<first\|middle\|last\>.

## Usage

``` r
cdo_yearavg(ifile, complete_only = NULL, ofile = NULL)

cdo_yearmax(ifile, complete_only = NULL, ofile = NULL)

cdo_yearmaxidx(ifile, complete_only = NULL, ofile = NULL)

cdo_yearmean(ifile, complete_only = NULL, ofile = NULL)

cdo_yearmin(ifile, complete_only = NULL, ofile = NULL)

cdo_yearminidx(ifile, complete_only = NULL, ofile = NULL)

cdo_yearrange(ifile, complete_only = NULL, ofile = NULL)

cdo_yearstd(ifile, complete_only = NULL, ofile = NULL)

cdo_yearstd1(ifile, complete_only = NULL, ofile = NULL)

cdo_yearsum(ifile, complete_only = NULL, ofile = NULL)

cdo_yearvar(ifile, complete_only = NULL, ofile = NULL)

cdo_yearvar1(ifile, complete_only = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- complete_only:

  BOOL - Process the last year only if it is complete

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

    yearmin     Yearly minimum
                For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = min\{i(t',x), t_1&lt;t'&lt;=t_n\}
    yearmax     Yearly maximum
                For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = max\{i(t',x), t_1&lt;t'&lt;=t_n\}
    yearminidx  Index of yearly minimum
                For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = minidx\{i(t',x), t_1&lt;t'&lt;=t_n\}
    yearmaxidx  Index of yearly maximum
                For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = maxidx\{i(t',x), t_1&lt;t'&lt;=t_n\}
    yearrange   Yearly range
                For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = range\{i(t',x), t_1&lt;t'&lt;=t_n\}
    yearsum     Yearly sum
                For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = sum\{i(t',x), t_1&lt;t'&lt;=t_n\}
    yearmean    Yearly mean
                For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = mean\{i(t',x), t_1&lt;t'&lt;=t_n\}
    yearavg     Yearly average
                For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = avg\{i(t',x), t_1&lt;t'&lt;=t_n\}
    yearstd     Yearly standard deviation
                Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = std\{i(t',x), t_1 &lt; t' &lt;= t_n\}
    yearstd1    Yearly standard deviation (n-1)
                Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = std1\{i(t',x), t_1 &lt; t' &lt;= t_n\}
    yearvar     Yearly variance
                Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = var\{i(t',x), t_1 &lt; t' &lt;= t_n\}
    yearvar1    Yearly variance (n-1)
                Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same year it is:

                o(t,x) = var1\{i(t',x), t_1 &lt; t' &lt;= t_n\}

## Note

The operators yearmean and yearavg compute only arithmetical means!
