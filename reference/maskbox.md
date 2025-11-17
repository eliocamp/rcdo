# Mask a box

Masks grid cells inside a lon/lat or index box. The elements inside the
box are untouched, the elements outside are set to missing value. All
input fields need to have the same horizontal grid. Use sellonlatbox or
selindexbox if only the data inside the box are needed.

## Usage

``` r
cdo_maskindexbox(
  ifile,
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

cdo_masklonlatbox(
  ifile,
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

    masklonlatbox  Mask a longitude/latitude box
                   Masks grid cells inside a lon/lat box. The user must specify the longitude and latitude of the edges of the box.
                   Only those grid cells are considered whose grid center lies within the lon/lat box.
                   For rotated lon/lat grids the parameters must be specified in rotated coordinates.
    maskindexbox   Mask an index box
                   Masks grid cells within an index box. The user must specify the indices of the edges of the box.
                   The index of the left edge can be greater then the one of the right edge. Use negative indexing to
                   start from the end. The input grid must be a regular lon/lat or a 2D curvilinear grid.
