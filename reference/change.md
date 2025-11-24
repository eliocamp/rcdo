# Change field header

This module reads fields from infile, changes some header values and
writes the results to outfile. The kind of changes depends on the chosen
operator.

## Usage

``` r
cdo_chcode(
  ifile,
  code = NULL,
  oldcode = NULL,
  newcode = NULL,
  oldparam = NULL,
  newparam = NULL,
  name = NULL,
  oldname = NULL,
  newname = NULL,
  oldlev = NULL,
  newlev = NULL,
  ofile = NULL
)

cdo_chlevel(
  ifile,
  code = NULL,
  oldcode = NULL,
  newcode = NULL,
  oldparam = NULL,
  newparam = NULL,
  name = NULL,
  oldname = NULL,
  newname = NULL,
  oldlev = NULL,
  newlev = NULL,
  ofile = NULL
)

cdo_chlevelc(
  ifile,
  code = NULL,
  oldcode = NULL,
  newcode = NULL,
  oldparam = NULL,
  newparam = NULL,
  name = NULL,
  oldname = NULL,
  newname = NULL,
  oldlev = NULL,
  newlev = NULL,
  ofile = NULL
)

cdo_chlevelv(
  ifile,
  code = NULL,
  oldcode = NULL,
  newcode = NULL,
  oldparam = NULL,
  newparam = NULL,
  name = NULL,
  oldname = NULL,
  newname = NULL,
  oldlev = NULL,
  newlev = NULL,
  ofile = NULL
)

cdo_chname(
  ifile,
  code = NULL,
  oldcode = NULL,
  newcode = NULL,
  oldparam = NULL,
  newparam = NULL,
  name = NULL,
  oldname = NULL,
  newname = NULL,
  oldlev = NULL,
  newlev = NULL,
  ofile = NULL
)

cdo_chparam(
  ifile,
  code = NULL,
  oldcode = NULL,
  newcode = NULL,
  oldparam = NULL,
  newparam = NULL,
  name = NULL,
  oldname = NULL,
  newname = NULL,
  oldlev = NULL,
  newlev = NULL,
  ofile = NULL
)

cdo_chunit(
  ifile,
  code = NULL,
  oldcode = NULL,
  newcode = NULL,
  oldparam = NULL,
  newparam = NULL,
  name = NULL,
  oldname = NULL,
  newname = NULL,
  oldlev = NULL,
  newlev = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- code:

  INTEGER - Code number

- oldcode:

  INTEGER - Pairs of old and new code numbers

- newcode:

  INTEGER - Pairs of old and new code numbers

- oldparam:

  STRING - Pairs of old and new parameter identifiers

- newparam:

  STRING - Pairs of old and new parameter identifiers

- name:

  STRING - Variable name

- oldname:

  STRING - Pairs of old and new variable names

- newname:

  STRING - Pairs of old and new variable names

- oldlev:

  FLOAT - Old level

- newlev:

  FLOAT - New level

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

    chcode    Change code number
              Changes some user given code numbers to new user given values.
    chparam   Change parameter identifier
              Changes some user given parameter identifiers to new user given values.
    chname    Change variable or coordinate name
              Changes some user given variable or coordinate names to new user given names.
    chunit    Change variable unit
              Changes some user given variable units to new user given units.
    chlevel   Change level
              Changes some user given levels to new user given values.
    chlevelc  Change level of one code
              Changes one level of a user given code number.
    chlevelv  Change level of one variable
              Changes one level of a user given variable name.
