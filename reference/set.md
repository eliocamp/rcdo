# Set field info

This module sets some field information. Depending on the chosen
operator the parameter table, code number, parameter identifier,
variable name or level is set.

## Usage

``` r
cdo_setcode(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setcodetab(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setlevel(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setltype(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setmaxsteps(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setname(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setparam(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)

cdo_setunit(
  ifile,
  table = NULL,
  code = NULL,
  param = NULL,
  name = NULL,
  level = NULL,
  ltype = NULL,
  maxsteps = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- table:

  STRING - Parameter table file or name

- code:

  INTEGER - Code number

- param:

  STRING - Parameter identifier (GRIB1: code\[.tabnum\]; GRIB2:
  num\[.cat\[.dis\]\])

- name:

  STRING - Variable name

- level:

  FLOAT - New level

- ltype:

  INTEGER - GRIB level type

- maxsteps:

  INTEGER - Maximum number of timesteps

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

    setcodetab   Set parameter code table
                 Sets the parameter code table for all variables.
    setcode      Set code number
                 Sets the code number for all variables to the same given value.
    setparam     Set parameter identifier
                 Sets the parameter identifier of the first variable.
    setname      Set variable name
                 Sets the name of the first variable.
    setunit      Set variable unit
                 Sets the unit of the first variable.
    setlevel     Set level
                 Sets the first level of all variables.
    setltype     Set GRIB level type
                 Sets the GRIB level type of all variables.
    setmaxsteps  Set max timesteps
                 Sets maximum number of timesteps
