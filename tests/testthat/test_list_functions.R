context("list_* functions return types")
library(databraryapi)

# list_assets_by_type ---------------------------------------------------
test_that("list_assets_by_type returns data.frame", {
  expect_true(class(list_assets_by_type()) == "data.frame")
})

test_that("list_assets_by_type rejects bad input parameters", {
  expect_error(list_assets_by_type(vol_id = -1))
  expect_error(list_assets_by_type(vol_id = 0))
  expect_error(list_assets_by_type(vol_id = "a"))
  expect_error(list_assets_by_type(vol_id = list(a=1, b=2)))
  expect_error(list_assets_by_type(vol_id = TRUE))

  expect_error(list_assets_by_type(type = "a"))
  expect_error(list_assets_by_type(type = c(1,2)))
  expect_error(list_assets_by_type(type = TRUE))
  expect_error(list_assets_by_type(type = list(a=1, b=2)))

  expect_error(list_assets_by_type(vb = -1))
  expect_error(list_assets_by_type(vb = 3))
  expect_error(list_assets_by_type(vb = "a"))
  expect_error(list_assets_by_type(vb = list(a=1, b=2)))
})

# list_assets_in_session -----------------------------------------------
test_that("list_assets_by_type returns data.frame", {
  expect_true(class(list_assets_in_session()) == "data.frame")
})

test_that("list_assets_in_session rejects bad input parameters", {
  expect_error(list_assets_in_session(vol_id = -1))
  expect_error(list_assets_in_session(vol_id = 0))
  expect_error(list_assets_in_session(vol_id = "a"))
  expect_error(list_assets_in_session(vol_id = list(a=1, b=2)))
  expect_error(list_assets_in_session(vol_id = TRUE))

  expect_error(list_assets_in_session(session_id = -1))
  expect_error(list_assets_in_session(session_id = 0))
  expect_error(list_assets_in_session(session_id = "a"))
  expect_error(list_assets_in_session(session_id = list(a=1, b=2)))
  expect_error(list_assets_in_session(session_id = TRUE))

  expect_error(list_assets_in_session(vb = -1))
  expect_error(list_assets_in_session(vb = 3))
  expect_error(list_assets_in_session(vb = "a"))
  expect_error(list_assets_in_session(vb = list(a=-1, b=2)))
})

# list_assets_in_volume -----------------------------------------------
test_that("list_assets_in_volume returns data.frame", {
  expect_true(class(list_assets_in_volume()) == "data.frame")
})

test_that("list_assets_in_volume rejects bad input parameters", {
  expect_error(list_assets_in_volume(vol_id = -1))
  expect_error(list_assets_in_volume(vol_id = 0))
  expect_error(list_assets_in_volume(vol_id = "a"))
  expect_error(list_assets_in_volume(vol_id = list(a=1, b=2)))
  expect_error(list_assets_in_volume(vol_id = TRUE))

  expect_error(list_assets_in_volume(vb = -1))
  expect_error(list_assets_in_volume(vb = 3))
  expect_error(list_assets_in_volume(vb = "a"))
  expect_error(list_assets_in_volume(vb = list(a=1, b=2)))
})

# list_assets_json -----------------------------------------------------
test_that("list_assets_json returns character", {
  expect_true(class(list_assets_json()) == "character")
})

test_that("list_assets_json returns valid JSON", {
  expect_true(jsonlite::validate(list_assets_json()))
})

test_that("list_assets_json rejects bad input parameters", {
  expect_error(list_assets_json(session_id = "a"))
  expect_error(list_assets_json(session_id = c(1,2)))
  expect_error(list_assets_json(session_id = TRUE))
  expect_error(list_assets_json(session_id = list(a=1, b=2)))

  expect_error(list_assets_json(vol_id = -1))
  expect_error(list_assets_json(vol_id = 0))
  expect_error(list_assets_json(vol_id = "a"))
  expect_error(list_assets_json(vol_id = list(a=1, b=2)))
  expect_error(list_assets_json(vol_id = TRUE))

  expect_error(list_assets_json(vb = -1))
  expect_error(list_assets_json(vb = 3))
  expect_error(list_assets_json(vb = "a"))
  expect_error(list_assets_json(vb = list(a=1, b=2)))
})

# list_containers_records_json -----------------------------------------------
test_that("list_containers_records_json returns character", {
  expect_true(class(list_containers_records_json()) == "character")
})

test_that("list_containers_records_json is JSON", {
  expect_true(jsonlite::validate(list_containers_records_json()))
})

test_that("list_containers_records_json rejects bad input parameters", {
  expect_error(list_containers_records_json(vol_id = "a"))
  expect_error(list_containers_records_json(vol_id = c(1,2)))
  expect_error(list_containers_records_json(vol_id = TRUE))
  expect_error(list_containers_records_json(vol_id = list(a=1, b=2)))
  expect_error(list_containers_records_json(vol_id = -1))
  expect_error(list_containers_records_json(vol_id = 0))

  expect_error(list_containers_records_json(vb = -1))
  expect_error(list_containers_records_json(vb = 3))
  expect_error(list_containers_records_json(vb = "a"))
  #  expect_error(list_containers_records_json(vb = list(a=1, b=2)))
})

# list_people ----------------------------------------------------------------
test_that("list_people returns data.frame", {
  expect_true(class(list_people()) == "data.frame")
})

test_that("list_people rejects bad input parameters", {
  expect_error(list_people(people_list = "a"))
  expect_error(list_people(people_list = TRUE))
  expect_error(list_people(people_list = 0))
  expect_error(list_people(people_list = -1))

  expect_error(list_people(vb = -1))
  expect_error(list_people(vb = 3))
  expect_error(list_people(vb = "a"))
  expect_error(list_people(vb = list(a=1, b=2)))
})

# list_sessions --------------------------------------------------------------
test_that("list_sessions returns data.frame", {
  expect_true(class(list_assets_in_session()) == "data.frame")
})

test_that("list_sessions rejects bad input parameters", {
  expect_error(list_sessions(vol_id = "a"))
  expect_error(list_sessions(vol_id = TRUE))
  expect_error(list_sessions(vol_id = list(a=1, b=2)))
  expect_error(list_sessions(vol_id = -1))

  expect_error(list_sessions(vb = -1))
  expect_error(list_sessions(vb = 3))
  expect_error(list_sessions(vb = "a"))
})

# list_sessions_in_volume --------------------------------------------------------------
test_that("list_sessions_in_volume returns data.frame", {
  expect_true(class(list_sessions_in_volume()) == "data.frame")
})

test_that("list_sessions_in_volume rejects bad input parameters", {
  expect_error(list_sessions_in_volume(vol_id = "a"))
  expect_error(list_sessions_in_volume(vol_id = TRUE))
  expect_error(list_sessions_in_volume(vol_id = list(a=1, b=2)))
  expect_error(list_sessions_in_volume(vol_id = -1))

  expect_error(list_sessions_in_volume(vb = -1))
  expect_error(list_sessions_in_volume(vb = 3))
  expect_error(list_sessions_in_volume(vb = "a"))
})

# list_volume_metadata --------------------------------------------------------------
test_that("list_volume_metadata returns data.frame", {
  expect_true(class(list_volume_metadata()) == "data.frame")
})

test_that("list_volume_metadata rejects bad input parameters", {
  expect_error(list_volume_metadata(vol_id = "a"))
  expect_error(list_volume_metadata(vol_id = TRUE))
  expect_error(list_volume_metadata(vol_id = list(a=1, b=2)))
  expect_error(list_volume_metadata(vol_id = -1))

  expect_error(list_volume_metadata(write_header = -1))
  expect_error(list_volume_metadata(write_header = 3))
  expect_error(list_volume_metadata(write_header = "a"))
  expect_error(list_volume_metadata(write_header = list(a=1, b=2)))

  expect_error(list_volume_metadata(data_frame = -1))
  expect_error(list_volume_metadata(data_frame = 3))
  expect_error(list_volume_metadata(data_frame = "a"))
  expect_error(list_volume_metadata(data_frame = list(a=1, b=2)))

  expect_error(list_volume_metadata(vb = -1))
  expect_error(list_volume_metadata(vb = 3))
  expect_error(list_volume_metadata(vb = "a"))
  expect_error(list_volume_metadata(vb = list(a=1, b=2)))
})

# list_volume_owners ---------------------------------------------------------
test_that("list_volume_owners returns data.frame", {
  expect_true(class(list_volume_owners()) == "data.frame")
})

test_that("list_volume_owners rejects bad input parameters", {
  expect_error(list_volume_owners(vol_id = "a"))
  expect_error(list_volume_owners(vol_id = c(1,2)))
  expect_error(list_volume_owners(vol_id = TRUE))
  expect_error(list_volume_owners(vol_id = list(a=1, b=2)))
  expect_error(list_volume_owners(vol_id = -1))

  expect_error(list_volume_owners(vb = -1))
  expect_error(list_volume_owners(vb = 3))
  expect_error(list_volume_owners(vb = "a"))
  expect_error(list_volume_owners(vb = list(a=1, b=2)))
})
