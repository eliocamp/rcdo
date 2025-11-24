# Select fields

This module selects some fields from infile and writes them to outfile.
The fields selected depends on the chosen operator and the parameters. A
range of integer values can be specified by first/last\[/inc\].

## Usage

``` r
cdo_delcode(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_delname(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_delparam(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_selcode(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_selgrid(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_sellevel(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_sellevidx(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_selltype(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_selname(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_selparam(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_selstdname(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_seltabnum(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_selzaxis(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)

cdo_selzaxisname(
  ifile,
  parameter = NULL,
  codes = NULL,
  names = NULL,
  stdnames = NULL,
  levels = NULL,
  levidx = NULL,
  ltypes = NULL,
  grids = NULL,
  zaxes = NULL,
  zaxisnames = NULL,
  tabnums = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- parameter:

  STRING - Comma-separated list of parameter identifiers.

- codes:

  INTEGER - Comma-separated list or first/last\[/inc\] range of code
  numbers.

- names:

  STRING - Comma-separated list of variable names.

- stdnames:

  STRING - Comma-separated list of standard names.

- levels:

  FLOAT - Comma-separated list of vertical levels.

- levidx:

  INTEGER - Comma-separated list or first/last\[/inc\] range of index of
  levels.

- ltypes:

  INTEGER - Comma-separated list or first/last\[/inc\] range of GRIB
  level types.

- grids:

  STRING - Comma-separated list of grid names or numbers.

- zaxes:

  STRING - Comma-separated list of z-axis types or numbers.

- zaxisnames:

  STRING - Comma-separated list of z-axis names.

- tabnums:

  INTEGER - Comma-separated list or range of parameter table numbers.

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

    selparam      Select parameters by identifier
                  Selects all fields with parameter identifiers in a user given list.
    delparam      Delete parameters by identifier
                  Deletes all fields with parameter identifiers in a user given list.
    selcode       Select parameters by code number
                  Selects all fields with code numbers in a user given list or range.
    delcode       Delete parameters by code number
                  Deletes all fields with code numbers in a user given list or range.
    selname       Select parameters by name
                  Selects all fields with parameter names in a user given list.
    delname       Delete parameters by name
                  Deletes all fields with parameter names in a user given list.
    selstdname    Select parameters by standard name
                  Selects all fields with standard names in a user given list.
    sellevel      Select levels
                  Selects all fields with levels in a user given list.
    sellevidx     Select levels by index
                  Selects all fields with index of levels in a user given list or range.
    selgrid       Select grids
                  Selects all fields with grids in a user given list.
    selzaxis      Select z-axes
                  Selects all fields with z-axes in a user given list.
    selzaxisname  Select z-axes by name
                  Selects all fields with z-axis names in a user given list.
    selltype      Select GRIB level types
                  Selects all fields with GRIB level type in a user given list or range.
    seltabnum     Select parameter table numbers
                  Selects all fields with parameter table numbers in a user given list or range.
