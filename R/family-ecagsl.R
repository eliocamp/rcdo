## This file was created automatically, do not edit by hand.
#' Thermal Growing season length index
#'
#' Let infile1 be a time series of the daily mean temperature TG, and infile2 be a land-water mask. Within a period of 12 months, the thermal growing season length is officially defined as the number of days between: - first occurrence of at least nday consecutive days with TG &gt; T - first occurrence of at least nday consecutive days with TG &lt; T within the last 6 months On northern hemisphere, this period corresponds with the regular year, whereas on southern hemisphere, it starts at July 1st. Please note, that this definition may lead to weird results concerning values TG = T: In the first half of the period, these days do not contribute to the gsl, but they do within the second half. Moreover this definition could lead to discontinuous values in equatorial regions.  The numbers nday and T are optional parameter with default nday = 6 and T = 5°C. The number fland is an optional parameter with default value fland = 0.5 and denotes the fraction of a grid point that have to be covered by land in order to be included in the calculation. A further output variable is the start day of year of the growing season. Note that TG have to be given in units of Kelvin, whereas T have to be given in degrees Celsius.  The date information of a timestep in outfile is the date of the last contributing timestep in infile. 
#'
#' 
#'
#' 
#'
#' @name ecagsl
NULL
