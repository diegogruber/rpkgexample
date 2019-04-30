test_that("prediction works", {
  p1 <- predict_outcome(1)
  p8 <- predict_outcome(8)
  expect_equal(p1, "benign")
  expect_equal(p8, "malignant")
})
