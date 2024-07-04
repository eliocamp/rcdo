## This file was created automatically, do not edit by hand.
#' Generate a field
#'
#' Generates a dataset with one or more fields 
#'
#' @details
#'     const   Create a constant field
#'             Creates a constant field. All field elements of the grid have the same value.
#'     random  Create a field with random numbers
#'             Creates a field with rectangularly distrubuted random numbers in the interval \[0,1\].
#'     topo    Create a field with topography
#'             Creates a field with topography data, per default on a global half degree grid.
#'     seq     Create a time series
#'             Creates a time series with field size 1 and field elements beginning with a start value in time step 1
#'             which is increased from one time step to the next.
#'     stdatm  Create values for pressure and temperature for hydrostatic atmosphere
#'             Creates pressure and temperature values for the given list of vertical levels.
#'             The formulas are:
#'             
#'             P(z) = P_0 * exp(-1 * g/R * H/T_0 * log( (exp(z/H)*T_0 + T_Delta)/(T_0 + T_Delta))
#'             T(z) = T_0 + T_Delta * exp(-z/H)
#'             
#'             with the following constants
#'             
#'             T_0     = 213 K           Offset to get a surface temperature of 288K
#'             T_Delta = 75 K            Temperature lapse rate for 10Km
#'             P_0     = 1013.25 hPa     Surface pressure
#'             H       = 10000.0 m       Scale height
#'             g       = 9.80665 m/s**2  Earth gravity
#'             R       = 287.05 J/kg*K   Gas constant for air
#'             
#'             This is the solution for the hydrostatic equations and is only valid for the
#'             troposphere (constant positive lapse rate). The temperature increase in the
#'             stratosphere and other effects of the upper atmosphere are not taken into
#'             account.
#' 
#'
#' 
#'
#' @name vargen
NULL
