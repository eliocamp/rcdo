# Set the bounds of a field

This operator sets the boundary in the east, west, south and north of
the rectangular understood fields. Positive values of the parameters
increase the boundary in the selected direction. Negative values
decrease the field at the selected boundary. The new rows and columns
are filled with the missing value. With the optional parameter value a
different fill value can be used. Global cyclic fields are filled
cyclically at the east and west borders, if the fill value is not set by
the user. All input fields need to have the same horizontal grid.

## Usage

``` r
cdo_sethalo(
  ifile,
  east = NULL,
  west = NULL,
  south = NULL,
  north = NULL,
  value = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- east:

  INTEGER - East halo

- west:

  INTEGER - West halo

- south:

  INTEGER - South halo

- north:

  INTEGER - North halo

- value:

  FLOAT - Fill value (default is the missing value)

- ofile:

  String with the path to the output file.

## Value

Operators that output one or more files return a character vector to the
output files.

Operators that output an indefinite number of files return a string with
the basename of the files.

Operatos that don't return filenames return a character vector with the
string output.
