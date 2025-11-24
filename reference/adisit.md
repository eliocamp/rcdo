# Potential temperature to insitu temperature and vice versa

Potential temperature to insitu temperature and vice versa

## Usage

``` r
cdo_adipot(ifile, pressure = NULL, ofile = NULL)

cdo_adisit(ifile, pressure = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- pressure:

  FLOAT - Pressure in bar (constant value assigned to all levels)

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

    adisit  Potential temperature to in-situ temperature
            This is a special operator for the post processing of the ocean and sea ice model MPIOM.
            It converts potential temperature adiabatically to in-situ temperature to(t, s, p).
            Required input fields are sea water potential temperature (name=tho; code=2) and sea water salinity (name=sao; code=5).
            Pressure is calculated from the level information or can be specified by the optional parameter.
            Output fields are sea water temperature (name=to; code=20) and sea water salinity (name=s; code=5).
    adipot  In-situ temperature to potential temperature
            This is a special operator for the post processing of the ocean and sea ice model MPIOM.
            It converts in-situ temperature to potential temperature tho(to, s, p). Required input fields
            are sea water in-situ temperature (name=t; code=2) and sea water salinity (name=sao,s; code=5).
            Pressure is calculated from the level information or can be specified by the optional parameter.
            Output fields are sea water temperature (name=tho; code=2) and sea water salinity (name=s; code=5).
