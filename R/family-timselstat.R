## This file was created automatically, do not edit by hand.
#' Time range statistics
#'
#' This module computes statistical values for a selected number of timesteps. According to the chosen operator the minimum, maximum, range, sum, average, variance or standard deviation of the selected timesteps is written to outfile. The time of outfile is determined by the time in the middle of all contributing timesteps of infile. This can be change with the CDO option --timestat_date &lt;first|middle|last&gt;. 
#'
#' @details
#'     timselmin    Time selection minimum
#'                  For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:
#'                  
#'                  o(t,x) = min{i(t',x), t1 &lt; t' &lt;= tn}
#'     timselmax    Time selection maximum
#'                  For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:
#'                  
#'                  o(t,x) = max{i(t',x), t1 &lt; t' &lt;= tn}
#'     timselrange  Time selection range
#'                  For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:
#'                  
#'                  o(t,x) = range{i(t',x), t1 &lt; t' &lt;= tn}
#'     timselsum    Time selection sum
#'                  For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:
#'                  
#'                  o(t,x) = sum{i(t',x), t1 &lt; t' &lt;= tn}
#'     timselmean   Time selection mean
#'                  For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:
#'                  
#'                  o(t,x) = mean{i(t',x), t1 &lt; t' &lt;= tn}
#'     timselavg    Time selection average
#'                  For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:
#'                  
#'                  o(t,x) = avg{i(t',x), t1 &lt; t' &lt;= tn}
#'     timselstd    Time selection standard deviation
#'                  Normalize by n. For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:
#'                  
#'                  o(t,x) = std{i(t',x), t1 &lt; t' &lt;= tn}
#'     timselstd1   Time selection standard deviation (n-1)
#'                  Normalize by (n-1). For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:
#'                  
#'                  o(t,x) = std1{i(t',x), t1 &lt; t' &lt;= tn}
#'     timselvar    Time selection variance
#'                  Normalize by n. For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:
#'                  
#'                  o(t,x) = var{i(t',x), t1 &lt; t' &lt;= tn}
#'     timselvar1   Time selection variance (n-1)
#'                  Normalize by (n-1). For every adjacent sequence t1, ...., tn of timesteps of the same selected time range it is:
#'                  
#'                  o(t,x) = var1{i(t',x), t1 &lt; t' &lt;= tn}
#' 
#'
#' 
#'
#' @name timselstat
NULL
