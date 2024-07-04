## This file was created automatically, do not edit by hand.
#' Monthly statistics
#'
#' This module computes statistical values over timesteps of the same month. Depending on the chosen operator the minimum, maximum, range, sum, average, variance or standard deviation of timesteps of the same month is written to outfile. The time of outfile is determined by the time in the middle of all contributing timesteps of infile. This can be change with the CDO option --timestat_date &lt;first|middle|last&gt;. 
#'
#' @details
#'     monmin    Monthly minimum
#'               For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
#'               
#'               o(t,x) = min\{i(t',x), t_1&lt;t'&lt;=t_n\}
#'     monmax    Monthly maximum
#'               For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
#'               
#'               o(t,x) = max\{i(t',x), t_1&lt;t'&lt;=t_n\}
#'     monrange  Monthly range
#'               For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
#'               
#'               o(t,x) = range\{i(t',x), t_1&lt;t'&lt;=t_n\}
#'     monsum    Monthly sum
#'               For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
#'               
#'               o(t,x) = sum\{i(t',x), t_1&lt;t'&lt;=t_n\}
#'     monmean   Monthly mean
#'               For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
#'               
#'               o(t,x) = mean\{i(t',x), t_1&lt;t'&lt;=t_n\}
#'     monavg    Monthly average
#'               For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
#'               
#'               o(t,x) = avg\{i(t',x), t_1&lt;t'&lt;=t_n\}
#'     monstd    Monthly standard deviation
#'               Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
#'               
#'               o(t,x) = std\{i(t',x), t_1 &lt; t' &lt;= t_n\}
#'     monstd1   Monthly standard deviation (n-1)
#'               Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
#'               
#'               o(t,x) = std1\{i(t',x), t_1 &lt; t' &lt;= t_n\}
#'     monvar    Monthly variance
#'               Normalize by n. For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
#'               
#'               o(t,x) = var\{i(t',x), t_1 &lt; t' &lt;= t_n\}
#'     monvar1   Monthly variance (n-1)
#'               Normalize by (n-1). For every adjacent sequence t_1, ...,t_n of timesteps of the same month it is:
#'               
#'               o(t,x) = var1\{i(t',x), t_1 &lt; t' &lt;= t_n\}
#' 
#'
#' 
#'
#' @name monstat
NULL
