# Pressure on model levels

This module contains operators to calculate the pressure on model
levels. To calculate the pressure on model levels, the a and b
coefficients defining the model levels and the surface pressure are
required. The a and b coefficients are normally part of the model level
data. If not available, the surface pressure can be derived from the
logarithm of the surface pressure. The surface pressure is identified by
the GRIB1 code number or NetCDF CF standard name. Name & Units & GRIB1
code & CF standard name log surface pressure & Pa & 152 & surface
pressure & Pa & 134 & surface_air_pressure

## Usage

``` r
cdo_delta_pressure(ifile, ofile = NULL)

cdo_pressure(ifile, ofile = NULL)

cdo_pressure_half(ifile, ofile = NULL)
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

    pressure_half   Pressure on half-levels
                    This operator computes the pressure on model half-levels in pascal.
                    The model half-level pressure (p_half) is given by:


                            p_half = a + b * sp

                    with
                       a, b: coefficients defining the model levels
                       sp: surface pressure
    pressure        Pressure on full-levels
                    This operator computes the pressure on model full-levels in pascal.
                    The pressure on model full-levels (p_full) is in the middle of the layers defined by the model half-levels:

                            p_full = (p_half_above + p_half_below) / 2

    delta_pressure  Pressure difference of half-levels
                    This operator computes the pressure difference between to model half-levels.

                            delta_p = p_half_below - p_half_above
