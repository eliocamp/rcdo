## This file was created automatically, do not edit by hand.
#' Multiyear daily running statistics
#'
#' This module writes running statistical values for each day of year in infile to outfile. Depending on the chosen operator, the minimum, maximum, sum, average, variance or standard deviation of all timesteps in running windows of which the medium timestep corresponds to a certain day of year is computed. The date information in an output field is the date of the timestep in the middle of the last contributing running window. Note that the operator have to be applied to a continuous time series of daily measurements in order to yield physically meaningful results. Also note that the output time series begins (nts-1)/2 timesteps after the first timestep of the input time series and ends (nts-1)/2 timesteps before the last one. For input data which are complete but not continuous, such as time series of daily measurements for the same month or season within different years, the operator yields physically meaningful results only if the input time series does include the (nts-1)/2 days before and after each period of interest. 
#'
#' @details
#'     ydrunmin   Multi-year daily running minimum
#'                o(001,x) = min\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 001\}
#'                                 ...
#'                o(366,x) = min\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 366\}
#'     ydrunmax   Multi-year daily running maximum
#'                o(001,x) = max\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 001\}
#'                                 ...
#'                o(366,x) = max\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 366\}
#'     ydrunsum   Multi-year daily running sum
#'                o(001,x) = sum\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 001\}
#'                                 ...
#'                o(366,x) = sum\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 366\}
#'     ydrunmean  Multi-year daily running mean
#'                o(001,x) = mean\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 001\}
#'                                 ...
#'                o(366,x) = mean\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 366\}
#'     ydrunavg   Multi-year daily running average
#'                o(001,x) = avg\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 001\}
#'                                 ...
#'                o(366,x) = avg\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 366\}
#'     ydrunstd   Multi-year daily running standard deviation
#'                Normalize by n.
#'                
#'                o(001,x) = std\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[i(t+(nts-1)/2)\] = 001\}
#'                                 ...
#'                o(366,x) = std\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[i(t+(nts-1)/2)\] = 366\}
#'     ydrunstd1  Multi-year daily running standard deviation (n-1)
#'                Normalize by (n-1).
#'                
#'                o(001,x) = std1\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[i(t+(nts-1)/2)\] = 001\}
#'                                 ...
#'                o(366,x) = std1\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[i(t+(nts-1)/2)\] = 366\}
#'     ydrunvar   Multi-year daily running variance
#'                Normalize by n.
#'                
#'                o(001,x) = var\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 001\}
#'                                 ...
#'                o(366,x) = var\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 366\}
#'     ydrunvar1  Multi-year daily running variance (n-1)
#'                Normalize by (n-1).
#'                
#'                o(001,x) = var1\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 001\}
#'                                 ...
#'                o(366,x) = var1\{i(t,x), i(t+1,x), ..., i(t+nts-1,x); day\[(i(t+(nts-1)/2)\] = 366\}
#' 
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
#' @name ydrunstat
NULL
