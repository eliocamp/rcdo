test_that("multiplication works", {
  expect_null(unlist(cdo_cache_get()))

  location <- tempfile()

  old <- cdo_cache_set(location)
  expect_null(unlist(old))

  expect_error(cdo_cache_set(list(a = 1)))

  cdo_cache_set(old)
  expect_null(unlist(cdo_cache_get()))


})
