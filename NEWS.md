# rcdo (development version)

# rcdo 0.3.0

## New Features

-   Adds caching support in `cdo_execute()` and `cdo_execute_list()` as well as cache management with `cdo_cache_set()` and `cdo_cache_unset()`.

-   Global options are now not replaced by default if an `options` argument is supplied.
    The new `options_replace` controls this behaviour.
    If it's `FALSE`, then global options, operation options and argument options are all concatenated (duplicated options are not checked for).
    If it's `TRUE`, then only the argument options are used, even if they are `NULL` (which implies, no options).
    This is potentially a **breaking change.**

# rcdo 0.2.0

## New Features

-   Improved performance of command building by only checking the cdo version installed when needed and also caching the result per session.

# rcdo 0.1.0

## New Features

-   Added options management. `cdo_options_use()` will use options for an operation. `cdo_option_set()` will set global options to use for all operations. `cdo_options_clear()` will clear the global options.
-   The new `cdo_operator()` allows the user to define an arbitrary operator in case the some operator is missing in the package. Operators are run with the `cdo()` function.
-   Added operators with zero outputs.
-   By default, temporary files output are deleted when not accessible from the R session.
-   Adds change operators.
-   Adds `cdo_execute_list()` to execute a list of cdo operations. This is the preferred way of applying operations to a set of files since it preserves ephemeral files correctly.
