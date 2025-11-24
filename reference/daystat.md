# Daily statistics

This module computes statistical values over timesteps of the same day.
Depending on the chosen operator the minimum, maximum, range, sum,
average, variance or standard deviation of timesteps of the same day is
written to outfile. The time of outfile is determined by the time in the
middle of all contributing timesteps of infile. This can be change with
the CDO option –timestat_date \<first\|middle\|last\>.

## Usage

``` r
cdo_dayavg(ifile, complete_only = NULL, ofile = NULL)

cdo_daymax(ifile, complete_only = NULL, ofile = NULL)

cdo_daymean(ifile, complete_only = NULL, ofile = NULL)

cdo_daymin(ifile, complete_only = NULL, ofile = NULL)

cdo_dayrange(ifile, complete_only = NULL, ofile = NULL)

cdo_daystd(ifile, complete_only = NULL, ofile = NULL)

cdo_daystd1(ifile, complete_only = NULL, ofile = NULL)

cdo_daysum(ifile, complete_only = NULL, ofile = NULL)

cdo_dayvar(ifile, complete_only = NULL, ofile = NULL)

cdo_dayvar1(ifile, complete_only = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- complete_only:

  BOOL - Process the last day only if it is complete

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

    daymin    Daily minimum
              For every adjacent sequence t_1, ...,t_n of timesteps of the same day it is:

              o(t,x) = min\{i(t',x), t_1&lt;t'&lt;=t_n\}
    daymax    Daily maximum
              For every adjacent sequence t_1, ...,t_n of timesteps of the same day it is:

              o(t,x) = max\{i(t',x), t_1&lt;t'&lt;=t_n\}
    dayrange  Daily range
              For every adjacent sequence t_1, ...,t_n of timesteps of the same day it is:

              o(t,x) = range\{i(t',x), t_1&lt;t'&lt;=t_n\}
    daysum    Daily sum
              For every adjacent sequence t_1, ...,t_n of timesteps of the same day it is:

              o(t,x) = sum\{i(t',x), t_1&lt;t'&lt;=t_n\}
    daymean   Daily mean
              For every adjacent sequence t_1, ...,t_n of timesteps of the same day it is:

              o(t,x) = mean\{i(t',x), t_1&lt;t'&lt;=t_n\}
    dayavg    Daily average
              For every adjacent sequence t_1, ...,t_n of timesteps of the same day it is:

              o(t,x) = avg\{i(t',x), t_1&lt;t'&lt;=t_n\}
    daystd    Daily standard deviation
              Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same day it is:

              o(t,x) = std\{i(t',x), t_1&lt;t'&lt;=t_n\}
    daystd1   Daily standard deviation (n-1)
              Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same day it is:

              o(t,x) = std1\{i(t',x), t_1&lt;t'&lt;=t_n\}
    dayvar    Daily variance
              Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same day it is:

              o(t,x) = var\{i(t',x), t_1&lt;t'&lt;=t_n\}
    dayvar1   Daily variance (n-1)
              Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same day it is:

              o(t,x) = var1\{i(t',x), t_1&lt;t'&lt;=t_n\}
