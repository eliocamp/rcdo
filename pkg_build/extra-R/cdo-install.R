#' Install the supported CDO version
#'
#' @param reinstall Logical. Set to true to force reinstallation.
#'
#' @details
#' rcdo should work with your normal CDO installation but you if your installed
#' version is not the one used to generate this package, there could be some
#' small inconsistencies in the documentation, missing operators, extra operators
#' or changes in syntax.
#'
#' `cdo_install()` will attempt to download, configure, compile and install
#' CDO version `r cdo_version_string` in the package data directory. If this
#' version of CDO exists, the package will use it. Otherwise, it will use your
#' system's installation.
#'
#' @export
cdo_install <- function(reinstall = FALSE) {
  if (!reinstall && file.exists(cdo_local_path())) {
    cli::cli_warn("Local CDO installation detected. To reinstall use {.code cdo_install(reinstall = TRUE)}")
    return(cdo_local_path())
  }

  file <- tempfile()
  dir <- file.path(tempdir(), "cdo")

  utils::download.file(cdo_url, file, mode = "wb")
  utils::untar(file, exdir = dir)

  data_dir <- tools::R_user_dir("rcdo", "data")
  dir.create(data_dir, showWarnings = FALSE, recursive = TRUE)

  old <- setwd(file.path(dir, "cdo-2.4.2"))
  on.exit(setwd(old))

  config_cmd <- paste0("./configure --enable-netcdf4  --enable-zlib --with-netcdf=/usr/ --with-proj=/usr/ --prefix ", data_dir)
  system(config_cmd)
  system("make")
  system("make install")

  return(cdo_local_path())
}

#' @export
#' @rdname cdo_install
cdo_version <- function() {
  return(cdo_version_string)
}

cdo_version_string <- "2.4.2"
cdo_url <- "https://code.mpimet.mpg.de/attachments/download/29481/cdo-2.4.2.tar.gz"

