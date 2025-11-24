# Set grid information

This module modifies the metadata of the horizontal grid. Depending on
the chosen operator a new grid description is set, the coordinates are
converted or the grid cell area is added.

## Usage

``` r
cdo_setgrid(
  ifile,
  grid = NULL,
  gridtype = NULL,
  gridarea = NULL,
  gridmask = NULL,
  projparams = NULL,
  ofile = NULL
)

cdo_setgridarea(
  ifile,
  grid = NULL,
  gridtype = NULL,
  gridarea = NULL,
  gridmask = NULL,
  projparams = NULL,
  ofile = NULL
)

cdo_setgridmask(
  ifile,
  grid = NULL,
  gridtype = NULL,
  gridarea = NULL,
  gridmask = NULL,
  projparams = NULL,
  ofile = NULL
)

cdo_setgridtype(
  ifile,
  grid = NULL,
  gridtype = NULL,
  gridarea = NULL,
  gridmask = NULL,
  projparams = NULL,
  ofile = NULL
)

cdo_setprojparams(
  ifile,
  grid = NULL,
  gridtype = NULL,
  gridarea = NULL,
  gridmask = NULL,
  projparams = NULL,
  ofile = NULL
)
```

## Arguments

- ifile:

  String with the path to the input file.

- grid:

  STRING - Grid description file or name

- gridtype:

  STRING - Grid type (curvilinear, unstructured, regular, lonlat,
  projection or dereference)

- gridarea:

  STRING - Data file, the first field is used as grid cell area

- gridmask:

  STRING - Data file, the first field is used as grid mask

- projparams:

  STRING - Proj library parameter (e.g.:+init=EPSG:3413)

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

    setgrid        Set grid
                   Sets a new grid description. The input fields need to have the same grid size as the size
                   of the target grid description.
    setgridtype    Set grid type
                   Sets the grid type of all input fields. The following grid types are available:
                   curvilinear &quot;    &quot;    Converts a regular grid to a curvilinear grid
                   unstructured&quot;    &quot;    Converts a regular or curvilinear grid to an unstructured grid
                   dereference &quot;    &quot;    Dereference a reference to a grid
                   regular     &quot;    &quot;    Linear interpolation of a reduced Gaussian grid to a regular Gaussian grid
                   regularnn   &quot;    &quot;    Nearest neighbor interpolation of a reduced Gaussian grid to a regular Gaussian grid
                   lonlat      &quot;    &quot;    Converts a regular lonlat grid stored as a curvilinear grid back to a lonlat grid
                   projection  &quot;    &quot;    Removes the geographical coordinates if projection parameter available
    setgridarea    Set grid cell area
                   Sets the grid cell area. The parameter gridarea is the path to a data file,
                   the first field is used as grid cell area. The input fields need to have the same
                   grid size as the grid cell area. The grid cell area is used to compute
                   the weights of each grid cell if needed by an operator, e.g. for fldmean.
    setgridmask    Set grid mask
                   Sets the grid mask. The parameter gridmask is the path to a data file,
                   the first field is used as the grid mask. The input fields need to have the same
                   grid size as the grid mask. The grid mask is used as the target grid mask for
                   remapping, e.g. for remapbil.
    setprojparams  Set proj params
                   Sets the proj_params attribute of a projection. This attribute is used to compute
                   geographic coordinates of a projecton with the proj library.
