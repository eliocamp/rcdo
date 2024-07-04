## This file was created automatically, do not edit by hand.
#' Potential temperature to insitu temperature and vice versa
#'
#' 
#'
#' @details
#'     adisit  Potential temperature to in-situ temperature
#'             This is a special operator for the post processing of the ocean and sea ice model MPIOM.
#'             It converts potential temperature adiabatically to in-situ temperature to(t, s, p).
#'             Required input fields are sea water potential temperature (name=tho; code=2) and sea water salinity (name=sao; code=5).
#'             Pressure is calculated from the level information or can be specified by the optional parameter.
#'             Output fields are sea water temperature (name=to; code=20) and sea water salinity (name=s; code=5).
#'     adipot  In-situ temperature to potential temperature
#'             This is a special operator for the post processing of the ocean and sea ice model MPIOM.
#'             It converts in-situ temperature to potential temperature tho(to, s, p). Required input fields
#'             are sea water in-situ temperature (name=t; code=2) and sea water salinity (name=sao,s; code=5).
#'             Pressure is calculated from the level information or can be specified by the optional parameter.
#'             Output fields are sea water temperature (name=tho; code=2) and sea water salinity (name=s; code=5).
#' 
#'
#' 
#'
#' @name adisit
NULL
