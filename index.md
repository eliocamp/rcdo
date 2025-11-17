# rcdo

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
is the
[`cdo_selname()`](https://eliocamp.github.io/rcdo/reference/selvar.md)
function)

## Example

``` r
library(rcdo)
cdo_use("packaged")  # use package version of cdo that can be installed with `cdo_install()`. 
ncep <- "hgt_ncep.nc"
```

The ymonmean operator computes monthly annual cycle. The rcdo function
is
[`cdo_ymonmean()`](https://eliocamp.github.io/rcdo/reference/ymonstat.md)

``` r
ncep |> 
  cdo_ymonmean() 
```

The output just prints the command with a place holder output. Use
[`cdo_execute()`](https://eliocamp.github.io/rcdo/reference/cdo_execute.md)
to actually run the command. If no output file is specified, then the
result is saved in a tempfile.

``` r
ncep |> 
  cdo_ymonmean() |> 
  cdo_execute()
```

Operators can be chained. Lets select just the Southern Hemisphere
first.

``` r
ncep |> 
  cdo_sellonlatbox(lon1 = 0, lon2 = 360, lat1 = -90, lat2 = 0) |> 
  cdo_ymonmean() 
```

Now also select the 500 hPa level

``` r
ncep |> 
  cdo_sellonlatbox(lon1 = 0, lon2 = 360, lat1 = -90, lat2 = 0) |> 
  cdo_sellevel(level = 500) |> 
  cdo_ymonmean() 
```

``` r
ncep |> 
  cdo_sellonlatbox(lon1 = 0, lon2 = 360, lat1 = -90, lat2 = 0) |> 
  cdo_sellevel(level = 500) |> 
  cdo_ymonmean() 
```

## Prior art

The
[ClimateOperators](https://github.com/markpayneatwork/ClimateOperators)
package also wrapps CDO, but it’s approach is different. Instead of
wrapping each operator as its own function with parameters as arguments,
it provides a generic
[`cdo()`](https://eliocamp.github.io/rcdo/reference/cdo.md) function
that runs the operators that the user needs to write as strings. Instead
of

``` r
ncep |> 
  rcdo::cdo_sellonlatbox(lon1 = 0, lon2 = 360, lat1 = -90, lat2 = 0) 
```

one would write

``` r
ClimateOperators::cdo("sellonlatbox,0,360,-90,0", ncep, output_file)
```
