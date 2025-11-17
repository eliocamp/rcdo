# Set a box to constant

Sets a box of the rectangularly understood field to a constant value.
The elements outside the box are untouched, the elements inside are set
to the given constant. All input fields need to have the same horizontal
grid.

## Usage

``` r
cdo_setcindexbox(
  ifile,
  c = NULL,
  lon1 = NULL,
  lon2 = NULL,
  lat1 = NULL,
  lat2 = NULL,
  idx1 = NULL,
  idx2 = NULL,
  idy1 = NULL,
  idy2 = NULL,
  ofile = NULL
)

cdo_setclonlatbox(
  ifile,
  c = NULL,
  lon1 = NULL,
  lon2 = NULL,
  lat1 = NULL,
  lat2 = NULL,
  idx1 = NULL,
  idx2 = NULL,
  idy1 = NULL,
  idy2 = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- c:

  FLOAT - Constant

- lon1:

  FLOAT - Western longitude

- lon2:

  FLOAT - Eastern longitude

- lat1:

  FLOAT - Southern or northern latitude

- lat2:

  FLOAT - Northern or southern latitude

- idx1:

  INTEGER - Index of first longitude

- idx2:

  INTEGER - Index of last longitude

- idy1:

  INTEGER - Index of first latitude

- idy2:

  INTEGER - Index of last latitude

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

    setclonlatbox  Set a longitude/latitude box to constant
                   Sets the values of a longitude/latitude box to a constant value. The
                   user has to give the longitudes and latitudes of the edges of the box.
    setcindexbox   Set an index box to constant
                   Sets the values of an index box to a constant value. The user has to
                   give the indices of the edges of the box. The index of the left edge
                   can be greater than the one of the right edge.
