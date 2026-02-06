# Changelog

## rcdo (development version)

### Bug fixes

- Fix crash when using cache for operators without output

## rcdo 0.3.2

CRAN release: 2025-11-28

### Bug fixes

- Fix error for operators without output

## rcdo 0.3.1

CRAN release: 2025-11-24

### New features

- Automatically creates directories if needed.

## rcdo 0.3.0

CRAN release: 2025-07-07

### New Features

- Adds caching support in
  [`cdo_execute()`](https://eliocamp.github.io/rcdo/reference/cdo_execute.md)
  and
  [`cdo_execute_list()`](https://eliocamp.github.io/rcdo/reference/cdo_execute.md)
  as well as cache management with
  [`cdo_cache_set()`](https://eliocamp.github.io/rcdo/reference/cdo_cache.md)
  and
  [`cdo_cache_unset()`](https://eliocamp.github.io/rcdo/reference/cdo_cache.md).

- Global options are now not replaced by default if an `options`
  argument is supplied. The new `options_replace` controls this
  behaviour. If it’s `FALSE`, then global options, operation options and
  argument options are all concatenated (duplicated options are not
  checked for). If it’s `TRUE`, then only the argument options are used,
  even if they are `NULL` (which implies, no options). This is
  potentially a **breaking change.**

## rcdo 0.2.0

CRAN release: 2025-05-16

### New Features

- Improved performance of command building by only checking the cdo
  version installed when needed and also caching the result per session.

## rcdo 0.1.0

### New Features

- Added options management.
  [`cdo_options_use()`](https://eliocamp.github.io/rcdo/reference/cdo_options.md)
  will use options for an operation. `cdo_option_set()` will set global
  options to use for all operations.
  [`cdo_options_clear()`](https://eliocamp.github.io/rcdo/reference/cdo_options.md)
  will clear the global options.
- The new
  [`cdo_operator()`](https://eliocamp.github.io/rcdo/reference/cdo.md)
  allows the user to define an arbitrary operator in case the some
  operator is missing in the package. Operators are run with the
  [`cdo()`](https://eliocamp.github.io/rcdo/reference/cdo.md) function.
- Added operators with zero outputs.
- By default, temporary files output are deleted when not accessible
  from the R session.
- Adds change operators.
- Adds
  [`cdo_execute_list()`](https://eliocamp.github.io/rcdo/reference/cdo_execute.md)
  to execute a list of cdo operations. This is the preferred way of
  applying operations to a set of files since it preserves ephemeral
  files correctly.
