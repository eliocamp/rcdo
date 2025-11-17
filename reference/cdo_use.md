# Chose CDO version to use

Chose CDO version to use

## Usage

``` r
cdo_use(version = c("system", "packaged"))
```

## Arguments

- version:

  String with the cdo version to use:

  - `"system"` (the default) will use the system-wide installed version
    (specifically, whatever path is returned by `Sys.which("cdo")`).

  - `"packaged"` instructs rcdo to use a package-specific version that
    can be compiled and installed with
    [`cdo_install()`](https://eliocamp.github.io/rcdo/reference/cdo_install.md).

## Value

The path to the cdo executable (invisibly).

## Details

A one-time warning will be issued if the the cdo version found when
using `"system"` doesn't match the version used to build the rcdo
package. In that case, some operators documented in this package might
not be available to you or might behave slightly different. However,
most operators are stable, particularly the most often used ones.
