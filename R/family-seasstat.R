## This file was created automatically, do not edit by hand.
#' Seasonal statistics
#'
#' This module computes statistical values over timesteps of the same meteorological season. Depending on the chosen operator the minimum, maximum, range, sum, average, variance or standard deviation of timesteps of the same season is written to outfile. The time of outfile is determined by the time in the middle of all contributing timesteps of infile. This can be change with the CDO option --timestat_date &lt;first|middle|last&gt;. Be careful about the first and the last output timestep, they may be incorrect values if the seasons have incomplete timesteps. 
#'
#' @details
#'     seasmin    Seasonal minimum
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same season it is:
#'                
#'                o(t,x) = min\{i(t',x), t1 &lt; t' &lt;= tn\}
#'     seasmax    Seasonal maximum
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same season it is:
#'                
#'                o(t,x) = max\{i(t',x), t1 &lt; t' &lt;= tn\}
#'     seasrange  Seasonal range
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same season it is:
#'                
#'                o(t,x) = range\{i(t',x), t1 &lt; t' &lt;= tn\}
#'     seassum    Seasonal sum
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same season it is:
#'                
#'                o(t,x) = sum\{i(t',x), t1 &lt; t' &lt;= tn\}
#'     seasmean   Seasonal mean
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same season it is:
#'                
#'                o(t,x) = mean\{i(t',x), t1 &lt; t' &lt;= tn\}
#'     seasavg    Seasonal average
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same season it is:
#'                
#'                o(t,x) = avg\{i(t',x), t1 &lt; t' &lt;= tn\}
#'     seasstd    Seasonal standard deviation
#'                Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same season it is:
#'                
#'                o(t,x) = std\{i(t',x), t1 &lt; t' &lt;= tn\}
#'     seasstd1   Seasonal standard deviation (n-1)
#'                Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same season it is:
#'                
#'                o(t,x) = std1\{i(t',x), t1 &lt; t' &lt;= tn\}
#'     seasvar    Seasonal variance
#'                Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same season it is:
#'                
#'                o(t,x) = var\{i(t',x), t1 &lt; t' &lt;= tn\}
#'     seasvar1   Seasonal variance (n-1)
#'                Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same season it is:
#'                
#'                o(t,x) = var1\{i(t',x), t1 &lt; t' &lt;= tn\}
#'
#' 
#'
#' @returns
#' Operators that output one or more files return a character vector to the
#' output files.
#'
#' Operators that output an indefinite number of files return a string with the
#' basename of the files.
#'
#' Operatos that don't return filenames return a character vector with the
#' string output.
#' @name seasstat
NULL
