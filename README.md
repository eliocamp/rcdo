
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rcdo

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

rcdo is a wrapper around [Climate Data
Operators](https://code.mpimet.mpg.de/projects/cdo).

## Installation

You can install the development version of rcdo from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("eliocamp/rcdo")
```

Most operators are supported and are partially documented. The functions
start with `cdo_` an the name of the operator (e.g. the selname operator
is the `cdo_selname()` function)

## Example

``` r
library(rcdo)
ncep <- "hgt_ncep.nc"
```

The ymonmean operator computes monthly annual cycle. The rcdo function
is `cdo_ymonmean()`

``` r
ncep |> 
  cdo_ymonmean() 
#> CDO command:
#>    cdo ymonmean [ hgt_ncep.nc ] {{output}}
```

The output just prints the command with a place holder output. Use
`cdo_execute()` to actually run the command. If no outpuf file is
specified, then the result is saved in a tempfile.

``` r
ncep |> 
  cdo_ymonmean() |> 
  cdo_excecute()
#> [1] "/tmp/RtmpjbQnXg/file34107f3aff5"
```

Operators can be chained. Lets select just the Southern Hemisphere
first.

``` r
ncep |> 
  cdo_sellonlatbox(lon1 = 0, lon2 = 360, lat1 = -90, lat2 = 0) |> 
  cdo_ymonmean() 
#> CDO command:
#>    cdo ymonmean [ -sellonlatbox,0,360,-90,0 [ hgt_ncep.nc ] ] {{output}}
```

Now also select the 500 hPa level

``` r
ncep |> 
  cdo_sellonlatbox(lon1 = 0, lon2 = 360, lat1 = -90, lat2 = 0) |> 
  cdo_sellevel(level = 500) |> 
  cdo_ymonmean() 
#> CDO command:
#>    cdo ymonmean [ -sellevel,500 [ -sellonlatbox,0,360,-90,0 [ hgt_ncep.nc ] ] ] {{output}}
```

``` r
ncep |> 
  cdo_sellonlatbox(lon1 = 0, lon2 = 360, lat1 = -90, lat2 = 0) |> 
  cdo_sellevel(level = 500) |> 
  cdo_ymonmean() 
#> CDO command:
#>    cdo ymonmean [ -sellevel,500 [ -sellonlatbox,0,360,-90,0 [ hgt_ncep.nc ] ] ] {{output}}
```
