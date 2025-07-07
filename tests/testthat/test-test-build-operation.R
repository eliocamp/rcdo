
Sys.setenv(RCDO_DEBUG_CDO_VERSION = cdo_supported_version())

glue <- function(.x, .envir = parent.frame()) {
  glue::glue(.x, .open = "<", .close = ">", .envir = .envir)
}


norm_file <- function(x) {
  suppressWarnings(normalizePath(x))
}

test_that("simple operator", {
  x <- norm_file("file.nc")

  expect_warning(expect_equal(build_operation(cdo_ymonmin(x)),
                              glue("cdo  ymonmin [ <shQuote(x)> ] {{output}}")))
})


test_that("2 file operator", {
  x <- norm_file("file.nc")
  y <- norm_file("file2.nc")
  op <- cdo_ymonsub(y, x)
  expect_warning(expect_warning(expect_equal(build_operation(op),
                                             glue("cdo  ymonsub [ <shQuote(y)> <shQuote(x)> ] {{output}}"))))
})


test_that("parameters work", {
  x <- norm_file("file.nc")
  op <- cdo_sellonlatbox(x, 0, 360, -90, 0)
  expect_warning(expect_equal(build_operation(op),
                              glue("cdo  sellonlatbox,0,360,-90,0 [ <shQuote(x)> ] {{output}}")))
})

test_that("chaining", {
  x <- norm_file("file.nc")
  y <- norm_file("file2.nc")
  op <- cdo_ymonsub(y, cdo_ymonmean(x))
  expect_warning(expect_warning(expect_equal(build_operation(op),
                                             glue("cdo  ymonsub [ <shQuote(y)> -ymonmean [ <shQuote(x)> ] ] {{output}}"))))

  expect_error(cdo_ymonmean(cdo_trend(x)), "needs 1 input stream, not 2")
})

test_that("options work", {
  x <- norm_file("file.nc")
  op <- cdo_ymonmax(x)
  op_option <- cdo_options_use(op, c("-L", "-f"))

  expect_warning(expect_equal(build_operation(op_option),
                              glue("cdo -L -f ymonmax [ <shQuote(x)> ] {{output}}")))

  cdo_options_set(c("-O"))

  expect_warning(expect_equal(build_operation(op),
                              glue("cdo -O ymonmax [ <shQuote(x)> ] {{output}}")))

  expect_warning(expect_equal(build_operation(op_option),
                              glue("cdo -L -f -O ymonmax [ <shQuote(x)> ] {{output}}")))

  expect_warning(expect_equal(build_operation(op_option, options_replace = TRUE),
                              glue("cdo ymonmax [ <shQuote(x)> ] {{output}}")))

  expect_warning(expect_equal(build_operation(op_option, options = "-L", options_replace = TRUE),
                              glue("cdo -L ymonmax [ <shQuote(x)> ] {{output}}")))
  cdo_options_clear()
})

test_that("setting ouput works", {
  x <- norm_file("file.nc")
  op <- cdo_set_output(cdo_ymonmax(x), "out.nc")

  expect_warning(expect_equal(build_operation(op),
                              glue("cdo  ymonmax [ <shQuote(x)> ] out.nc")))
})

