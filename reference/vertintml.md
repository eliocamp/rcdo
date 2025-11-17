# Vertical interpolation

Interpolates 3D variables on hybrid sigma pressure level to pressure or
height levels. To calculate the pressure on model levels, the a and b
coefficients defining the model levels and the surface pressure are
required. The a and b coefficients are normally part of the model level
data. If not available, the surface pressure can be derived from the
logarithm of the surface pressure. To extrapolate the temperature, the
surface geopotential is also needed. The geopotential height must be
present at the hybrid layer interfaces (model half-layers)! All needed
variables are identified by their GRIB1 code number or NetCDF CF
standard name. Supported parameter tables are: WMO standard table number
2 and ECMWF local table number 128. Name & Units & GRIB1 code & CF
standard name log surface pressure & Pa & 152 & surface pressure & Pa &
134 & surface_air_pressure air temperature & K & 130 & air_temperature
surface geopotential & m2 s-2 & 129 & surface_geopotential geopotential
height & m & 156 & geopotential_height Use the alias ml2plx/ml2hlx or
the environment variable EXTRAPOLATE to extrapolate missing values. This
operator requires all variables on the same horizontal grid. Missing
values in the input data are not supported.

## Usage

``` r
cdo_ml2hl(ifile, plevels = NULL, hlevels = NULL, ofile = NULL)

cdo_ml2pl(ifile, plevels = NULL, hlevels = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- plevels:

  FLOAT - Pressure levels in pascal

- hlevels:

  FLOAT - Height levels in meter

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.

## Details

    ml2pl  Model to pressure level interpolation
           Interpolates 3D variables on hybrid sigma pressure level to pressure level.
    ml2hl  Model to height level interpolation
           Interpolates 3D variables on hybrid sigma pressure level to height level.
           The procedure is the same as for the operator ml2pl except for
           the pressure levels being calculated from the heights by:
           plevel = 101325*exp(hlevel/-7000)

## Note

The components of the hybrid coordinate must always be avaiable at the
hybrid layer interfaces even if the data is defined at the hybrid layer
midpoints.
