# Statistical values over all timesteps

This module computes statistical values over all timesteps in infile.
Depending on the chosen operator the minimum, maximum, range, sum,
average, variance or standard deviation of all timesteps read from
infile is written to outfile. The time of outfile is determined by the
time in the middle of all contributing timesteps of infile. This can be
change with the CDO option –timestat_date \<first\|middle\|last\>.

## Usage

``` r
cdo_timavg(ifile, ofile = NULL)

cdo_timmax(ifile, ofile = NULL)

cdo_timmaxidx(ifile, ofile = NULL)

cdo_timmean(ifile, ofile = NULL)

cdo_timmin(ifile, ofile = NULL)

cdo_timminidx(ifile, ofile = NULL)

cdo_timrange(ifile, ofile = NULL)

cdo_timstd(ifile, ofile = NULL)

cdo_timstd1(ifile, ofile = NULL)

cdo_timsum(ifile, ofile = NULL)

cdo_timvar(ifile, ofile = NULL)

cdo_timvar1(ifile, ofile = NULL)
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

    timmin     Time minimum
               o(1,x) = min\{i(t',x), t_1&lt;t'&lt;=t_n\}
    timmax     Time maximum
               o(1,x) = max\{i(t',x), t_1&lt;t'&lt;=t_n\}
    timminidx  Index of time minimum
               o(1,x) = minidx\{i(t',x), t_1&lt;t'&lt;=t_n\}
    timmaxidx  Index of time maximum
               o(1,x) = maxidx\{i(t',x), t_1&lt;t'&lt;=t_n\}
    timrange   Time range
               o(1,x) = range\{i(t',x), t_1&lt;t'&lt;=t_n\}
    timsum     Time sum
               o(1,x) = sum\{i(t',x), t_1&lt;t'&lt;=t_n\}
    timmean    Time mean
               o(1,x) = mean\{i(t',x), t_1&lt;t'&lt;=t_n\}
    timavg     Time average
               o(1,x) = avg\{i(t',x), t_1&lt;t'&lt;=t_n\}
    timstd     Time standard deviation
               Normalize by n.

               o(1,x) = std\{i(t',x), t_1&lt;t'&lt;=t_n\}
    timstd1    Time standard deviation (n-1)
               Normalize by (n-1).

               o(1,x) = std1\{i(t',x), t_1&lt;t'&lt;=t_n\}
    timvar     Time variance
               Normalize by n.

               o(1,x) = var\{i(t',x), t_1&lt;t'&lt;=t_n\}
    timvar1    Time variance (n-1)
               Normalize by (n-1).

               o(1,x) = var1\{i(t',x), t_1&lt;t'&lt;=t_n\}
