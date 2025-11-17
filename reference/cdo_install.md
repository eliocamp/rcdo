# Install the supported CDO version

Install the supported CDO version

## Usage

``` r
cdo_install(
  reinstall = FALSE,
  proj = "/usr",
  netcdf = "/usr",
  fftw3 = "/usr",
  eccodes = "/usr"
)
```

## Arguments

- reinstall:

  Logical. Set to true to force reinstallation.

- proj, netcdf, fftw3, eccodes:

  Location of the optional libraries.

## Value

The path to the installed cdo executable.

## Details

rcdo should work with your normal CDO installation but you if your
installed version is not the one used to generate this package, there
could be some small inconsistencies in the documentation, missing
operators, extra operators or changes in syntax.

`cdo_install()` will attempt to download, configure, compile and install
CDO version 2.5.1 in the package data directory. If this version of CDO
exists, the package will use it. Otherwise, it will use your system's
installation.
