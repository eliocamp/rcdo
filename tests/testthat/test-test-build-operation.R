cdo_use("system")# Check version to trigger the possible warning.

Sys.setenv(RCDO_DEBUG_CDO_VERSION = cdo_supported_version())

test_that("simple operator", {
  x <- "file.nc"

  expect_warning(expect_equal(build_operation(cdo_ymonmin(x)), "cdo  ymonmin [ 'file.nc' ] {{output}}"))
})


test_that("2 file operator", {
  x <- "file.nc"
  y <- "file2.nc"
  op <- cdo_ymonsub(y, x)
  expect_warning(expect_warning(expect_equal(build_operation(op), "cdo  ymonsub [ 'file2.nc' 'file.nc' ] {{output}}")))
})


test_that("parameters work", {
  x <- "file.nc"
  op <- cdo_sellonlatbox(x, 0, 360, -90, 0)
  expect_warning(expect_equal(build_operation(op), "cdo  sellonlatbox,0,360,-90,0 [ 'file.nc' ] {{output}}"))
})

test_that("chaining", {
  x <- "file.nc"
  y <- "file2.nc"
  op <- cdo_ymonsub(y, cdo_ymonmean(x))
  expect_warning(expect_warning(expect_equal(build_operation(op), "cdo  ymonsub [ 'file2.nc' -ymonmean [ 'file.nc' ] ] {{output}}")))

  expect_error(cdo_ymonmean(cdo_trend(x)), "needs 1 input stream, not 2")
})

test_that("options work", {
  x <- "file.nc"
  op <- cdo_ymonmax(x)
  op_option <- cdo_options_use(op, c("-L", "-f"))

  expect_warning(expect_equal(build_operation(op_option), "cdo -L -f ymonmax [ 'file.nc' ] {{output}}"))

  cdo_options_set(c("-O"))

  expect_warning(expect_equal(build_operation(op), "cdo -O ymonmax [ 'file.nc' ] {{output}}"))

  expect_warning(expect_equal(build_operation(op_option), "cdo -L -f -O ymonmax [ 'file.nc' ] {{output}}"))

  expect_warning(expect_equal(build_operation(op_option, options_replace = TRUE), "cdo ymonmax [ 'file.nc' ] {{output}}"))

  expect_warning(expect_equal(build_operation(op_option, options = "-L", options_replace = TRUE),
                              "cdo -L ymonmax [ 'file.nc' ] {{output}}"))
  cdo_options_clear()
})

test_that("setting ouput works", {
  x <- "file.nc"
  op <- cdo_set_output(cdo_ymonmax(x), "out.nc")

  expect_warning(expect_equal(build_operation(op),
                              "cdo  ymonmax [ 'file.nc' ] out.nc"))
})

