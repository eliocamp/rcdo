
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rcdo

<!-- badges: start -->

[![Lifecycle:
stable](https://img.shields.io/badge/lifecycle-stable-brightgreen.svg)](https://lifecycle.r-lib.org/articles/stages.html#stable)
[![CRAN
status](https://www.r-pkg.org/badges/version/rcdo)](https://CRAN.R-project.org/package=rcdo)
[![Codecov test
coverage](https://codecov.io/gh/eliocamp/rcdo/graph/badge.svg)](https://app.codecov.io/gh/eliocamp/rcdo)
[![R-CMD-check](https://github.com/eliocamp/rcdo/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/eliocamp/rcdo/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

rcdo is a wrapper around [Climate Data
Operators](https://code.mpimet.mpg.de/projects/cdo).

## Installation

You can install rcdo from CRAN with

``` r
install.packages("rcdo")
```

or the development version of rcdo from [GitHub](https://github.com/)
with:

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
cdo_use("packaged")  # use package version of cdo that can be installed with `cdo_install()`. 
#> Using packaged CDO, version 2.5.1.
ncep <- "hgt_ncep.nc"
```

The ymonmean operator computes monthly annual cycle. The rcdo function
is `cdo_ymonmean()`

``` r
ncep |> 
  cdo_ymonmean() 
#> CDO command:
#>    /home/user1/.local/share/R/rcdo/cdo-2.5.1/bin/cdo  ymonmean [ '/home/user1/Documents/r-packages/rcdo/hgt_ncep.nc' ] {{output}}
```

The output just prints the command with a place holder output. Use
`cdo_execute()` to actually run the command. If no output file is
specified, then the result is saved in a tempfile.

``` r
ncep |> 
  cdo_ymonmean() |> 
  cdo_execute()
#> [1] "/tmp/RtmpjoNW20/file27c2a87617d80"
#> attr(,"ephemeral")
#> attr(,"ephemeral")[[1]]
#> File will be deleted when garbage collected
#> 
#> attr(,"mtime")
#> [1] "2025-07-07 11:20:52 AEST"
#> attr(,"size")
#> [1] 8630649
```

Operators can be chained. Lets select just the Southern Hemisphere
first.

``` r
ncep |> 
  cdo_sellonlatbox(lon1 = 0, lon2 = 360, lat1 = -90, lat2 = 0) |> 
  cdo_ymonmean() 
#> CDO command:
#>    /home/user1/.local/share/R/rcdo/cdo-2.5.1/bin/cdo  ymonmean [ -sellonlatbox,0,360,-90,0 [ '/home/user1/Documents/r-packages/rcdo/hgt_ncep.nc' ] ] {{output}}
```

Now also select the 500 hPa level

``` r
ncep |> 
  cdo_sellonlatbox(lon1 = 0, lon2 = 360, lat1 = -90, lat2 = 0) |> 
  cdo_sellevel(level = 500) |> 
  cdo_ymonmean() 
#> CDO command:
#>    /home/user1/.local/share/R/rcdo/cdo-2.5.1/bin/cdo  ymonmean [ -sellevel,500 [ -sellonlatbox,0,360,-90,0 [ '/home/user1/Documents/r-packages/rcdo/hgt_ncep.nc' ] ] ] {{output}}
```

``` r
ncep |> 
  cdo_sellonlatbox(lon1 = 0, lon2 = 360, lat1 = -90, lat2 = 0) |> 
  cdo_sellevel(level = 500) |> 
  cdo_ymonmean() 
#> CDO command:
#>    /home/user1/.local/share/R/rcdo/cdo-2.5.1/bin/cdo  ymonmean [ -sellevel,500 [ -sellonlatbox,0,360,-90,0 [ '/home/user1/Documents/r-packages/rcdo/hgt_ncep.nc' ] ] ] {{output}}
```

## Prior art

The
[ClimateOperators](https://github.com/markpayneatwork/ClimateOperators)
package also wrapps CDO, but it’s approach is different. Instead of
wrapping each operator as its own function with parameters as arguments,
it provides a generic `cdo()` function that runs the operators that the
user needs to write as strings. Instead of

``` r
ncep |> 
  rcdo::cdo_sellonlatbox(lon1 = 0, lon2 = 360, lat1 = -90, lat2 = 0) 
```

one would write

``` r
ClimateOperators::cdo("sellonlatbox,0,360,-90,0", ncep, output_file)
```
