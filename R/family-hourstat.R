## This file was created automatically, do not edit by hand.
#' Hourly statistics
#'
#' This module computes statistical values over timesteps of the same hour. Depending on the chosen operator the minimum, maximum, range, sum, average, variance or standard deviation of timesteps of the same hour is written to outfile. The time of outfile is determined by the time in the middle of all contributing timesteps of infile. This can be change with the CDO option --timestat_date &lt;first|middle|last&gt;. 
#'
#' @details
#'     hourmin    Hourly minimum
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:
#'                
#'                o(t,x) = min{i(t',x), t_1&lt;t'&lt;=t_n}
#'     hourmax    Hourly maximum
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:
#'                
#'                o(t,x) = max{i(t',x), t_1&lt;t'&lt;=t_n}
#'     hourrange  Hourly range
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:
#'                
#'                o(t,x) = range{i(t',x), t_1&lt;t'&lt;=t_n}
#'     hoursum    Hourly sum
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:
#'                
#'                o(t,x) = sum{i(t',x), t_1&lt;t'&lt;=t_n}
#'     hourmean   Hourly mean
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:
#'                
#'                o(t,x) = mean{i(t',x), t_1&lt;t'&lt;=t_n}
#'     houravg    Hourly average
#'                For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:
#'                
#'                o(t,x) = avg{i(t',x), t_1&lt;t'&lt;=t_n}
#'     hourstd    Hourly standard deviation
#'                Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:
#'                
#'                o(t,x) = std{i(t',x), t_1&lt;t'&lt;=t_n}
#'     hourstd1   Hourly standard deviation (n-1)
#'                Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:
#'                
#'                o(t,x) = std1{i(t',x), t_1&lt;t'&lt;=t_n}
#'     hourvar    Hourly variance
#'                Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:
#'                
#'                o(t,x) = var{i(t',x), t_1&lt;t'&lt;=t_n}
#'     hourvar1   Hourly variance (n-1)
#'                Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same hour it is:
#'                
#'                o(t,x) = var1{i(t',x), t_1&lt;t'&lt;=t_n}
#'
#' 
#'
#' @name hourstat
NULL
