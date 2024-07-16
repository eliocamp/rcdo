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
#' CDO version `r package_cdo$version` in the package data directory. If this
#' version of CDO exists, the package will use it. Otherwise, it will use your
#' system's installation.
#'
#' @export
cdo_install <- function(reinstall = FALSE,
                        proj = "/usr/",
                        netcdf = "/usr/",
                        eccodes = "/usr/") {
  if (!reinstall && file.exists(cdo_local_path())) {
    cli::cli_warn("Local CDO installation detected. To reinstall use {.code cdo_install(reinstall = TRUE)}")
    return(cdo_local_path())
  }

  version <- package_cdo$version

  url <- package_cdo$url
  file <- tempfile()
  on.exit(unlink(file))
  download_dir <- file.path(tempdir(), "cdo")

  utils::download.file(url, file, mode = "wb")
  utils::untar(file, exdir = download_dir)
  on.exit(unlink(download_dir, recursive = TRUE), add = TRUE)

  cdo_dir <- cdo_data(paste0("cdo-", version))
  unlink(cdo_dir, recursive = TRUE)
  dir.create(cdo_dir, showWarnings = FALSE, recursive = TRUE)

  old <- setwd(file.path(download_dir, paste0("cdo-", version)))
  on.exit(setwd(old), add = TRUE)

  config_cmd <- paste0("./configure --enable-netcdf4  --enable-zlib --with-netcdf=", shQuote(netcdf), " --with-proj=", shQuote(proj), " --prefix ", shQuote(cdo_dir))
  system(config_cmd)

  system("make -j15")
  system("make -j15 install")

  return(cdo_local_path())
}

cdo_data <- function(...) {
  file.path(tools::R_user_dir("rcdo", "data"), ...)
}

#' @export
#' @rdname cdo_install
cdo_version <- function() {
  return(cdo_version_string)
}

package_cdo <- list(version = "2.4.2",
                    url = "https://code.mpimet.mpg.de/attachments/download/29481/cdo-2.4.2.tar.gz")


cdo_use <- function(which = c("system", "packaged")) {
  if (which[1] == "system") {
    cdo <- Sys.which("cdo")
    if (cdo == "") {
      cli::cli_abort("Cannot find a system version of CDO. Make sure CDO is installed and available in your PATH")
    }
  }

  if (which[1] == "packaged") {
    cdo <- cdo_local_path()
    if (!file.exists(cdo)) {
      cli::cli_abort("Cannot find packaged version of CDO. Download and compile with {.code cdo_install()}.")
    }
  }

  version <- system2(cdo, "-V", stdout = TRUE, stderr = TRUE)[1]
  semver_regex <- r"(\d+\.\d+\.\d+)"
  version <- regmatches(version, regexpr(semver_regex, version))

  cli::cli_inform("Using {which[1]} CDO, version {version}.")
  options("rcdo_version" = which[1])
}



get_cdo <- function(version = getOption("rcdo_version", "system")) {
  if (version == "system") {
    return("cdo")
  }

  cdo <- cdo_local_path()
  if (file.exists(cdo)) {
    return(cdo)
  } else {
    cli::cli_abort("Cannot find packaged version of CDO. Download and compile with {.code cdo_install()}.")
  }
}

cdo_local_path <- function(version = package_cdo$version) {
  if (is.null(version)) {
    version <- package_cdo$version
  }
  cdo_data(paste0("cdo-", version), "bin", "cdo")
}
