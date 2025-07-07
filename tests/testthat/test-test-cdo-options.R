test_that("can set options", {
  expect_no_error(old <- cdo_options_set("-L"))

  expect_null(unlist(old))

  expect_equal(cdo_options_get(), "-L")

  old <- cdo_options_clear()
  expect_equal(unname(unlist(old)), "-L")
  expect_null(cdo_options_get())
})
