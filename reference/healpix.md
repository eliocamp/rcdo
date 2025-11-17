# Change healpix resolution

Degrade or upgrade the resolution of a healpix grid.

## Usage

``` r
cdo_hpdegrade(ifile, nside = NULL, order = NULL, power = NULL, ofile = NULL)

cdo_hpupgrade(ifile, nside = NULL, order = NULL, power = NULL, ofile = NULL)
```

## Arguments

- ifile:

  String with the path to the input file.

- nside:

  INTEGER - The nside of the target healpix, must be a power of two
  \[default: same as input\].

- order:

  STRING - Pixel ordering of the target healpix ('nested' or 'ring').

- power:

  FLOAT - If non-zero, divide the result by
  (nside\[in\]/nside\[out\])\*\*power. power=-2 keeps the sum of the map
  invariant.

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

    hpdegrade  Degrade healpix
               Degrade the resolution of a healpix grid. The value of the target pixel is the mean of the source pixels.
    hpupgrade  Upgrade healpix
               Upgrade the resolution of a healpix grid. The values of the target pixels is the value of the source pixel.
