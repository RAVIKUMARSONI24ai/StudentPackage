test_that("Core and additional arithmetic functions work as expected", {
  expect_equal(addNumbers(10, 20), 30)
  expect_equal(subtractNumbers(10, 20), -10)
  expect_equal(multiplyNumbers(10, 20), 200)
})

test_that("Calculator functions work correctly", {
  expect_equal(add(10, 5), 15)
  expect_equal(subtract(10, 5), 5)
  expect_equal(multiply(10, 5), 50)
  expect_equal(divide(10, 5), 2)
  expect_error(divide(10, 0), "Division by zero is not allowed")
})

test_that("Statistics functions calculate correct metrics", {
  data <- c(10, 20, 30, 40, 50)
  expect_equal(mean_value(data), 30)
  expect_equal(variance(data), 250)
  expect_equal(round(std_dev(data), 5), 15.81139)
})
