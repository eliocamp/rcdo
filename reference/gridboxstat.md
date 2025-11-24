# Statistical values over grid boxes

This module computes statistical values over surrounding grid boxes.
Depending on the chosen operator, the minimum, maximum, range, sum,
average, standard deviation, variance, skewness, kurtosis or median of
the neighboring grid boxes is written to outfile. All gridbox operators
only work on quadrilateral curvilinear grids.

## Usage

``` r
cdo_gridboxavg(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxkurt(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxmax(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxmean(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxmedian(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxmin(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxrange(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxskew(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxstd(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxstd1(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxsum(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxvar(ifile, nx = NULL, ny = NULL, ofile = NULL)

cdo_gridboxvar1(ifile, nx = NULL, ny = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- nx:

  INTEGER - Number of grid boxes in x direction

- ny:

  INTEGER - Number of grid boxes in y direction

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

    gridboxmin     Gridbox minimum
                   Minimum value of the selected grid boxes.
    gridboxmax     Gridbox maximum
                   Maximum value of the selected grid boxes.
    gridboxrange   Gridbox range
                   Range (max-min value) of the selected grid boxes.
    gridboxsum     Gridbox sum
                   Sum of the selected grid boxes.
    gridboxmean    Gridbox mean
                   Mean of the selected grid boxes.
    gridboxavg     Gridbox average
                   Average of the selected grid boxes.
    gridboxstd     Gridbox standard deviation
                   Standard deviation of the selected grid boxes. Normalize by n.
    gridboxstd1    Gridbox standard deviation (n-1)
                   Standard deviation of the selected grid boxes. Normalize by (n-1).
    gridboxvar     Gridbox variance
                   Variance of the selected grid boxes. Normalize by n.
    gridboxvar1    Gridbox variance (n-1)
                   Variance of the selected grid boxes. Normalize by (n-1).
    gridboxskew    Gridbox skewness
                   Skewness of the selected grid boxes.
    gridboxkurt    Gridbox kurtosis
                   Kurtosis of the selected grid boxes.
    gridboxmedian  Gridbox median
                   Median of the selected grid boxes.
