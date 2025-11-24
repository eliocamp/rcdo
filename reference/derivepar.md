# Derived model parameters

This module contains operators that calculate derived model parameters.
These are currently the parameters sea level pressure and geopotential
height. All necessary input variables are identified by their GRIB1 code
number or the NetCDF CF standard name. Supported GRIB1 parameter tables
are: WMO standard table number 2 and ECMWF local table number 128. CF
standard name & Units & GRIB 1 code surface_air_pressure & Pa & 134
air_temperature & K & 130 specific_humidity & kg/kg & 133
surface_geopotential & m2 s-2 & 129 geopotential_height & m & 156

## Usage

``` r
cdo_gheight(ifile, ofile = NULL)

cdo_gheight_half(ifile, ofile = NULL)

cdo_sealevelpressure(ifile, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

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

    sealevelpressure  Sea level pressure
                      This operator computes the sea level pressure (air_pressure_at_sea_level). Required input fields
                      are surface_air_pressure, surface_geopotential and air_temperature on full hybrid sigma pressure levels.
    gheight           Geopotential height on full-levels
                      This operator computes the geopotential height (geopotential_height) on model full-levels in metres.
                      Required input fields are surface_air_pressure, surface_geopotential, specific_humidity and air_temperature
                      on full hybrid sigma pressure levels. Note, this procedure is an approximation, which doesn't take into
                      account the effects of e.g. cloud ice and water, rain and snow.
    gheight_half      Geopotential height on half-levels
                      This operator computes the geopotential height (geopotential_height) on model half-levels in metres.
                      Required input fields are surface_air_pressure, surface_geopotential, specific_humidity and air_temperature
                      on full hybrid sigma pressure levels. Note, this procedure is an approximation, which doesn't take into
                      account the effects of e.g. cloud ice and water, rain and snow.
