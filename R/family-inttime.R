## This file was created automatically, do not edit by hand.
#' Time interpolation
#'
#' This module performs linear interpolation between timesteps. Interpolation is only performed if both values exist. If both values are missing values, the result is also a missing value. If only one value exists, it is taken if the time weighting is greater than or equal to 0.5. So no new value will be created at existing time steps, if the value is missing there. 
#'
#' @details
#'     inttime   Interpolation between timesteps
#'               This operator creates a new dataset by linear interpolation between timesteps.
#'               The user has to define the start date/time with an optional increment.
#'     intntime  Interpolation between timesteps
#'               This operator performs linear interpolation between timesteps.
#'               The user has to define the number of timesteps from one timestep to the next.
#' 
#'
#' 
#'
#' @name inttime
NULL
