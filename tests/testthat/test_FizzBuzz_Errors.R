# Check to see if the errors are cast correctly
test_that('Errors are correct', {
  expect_error(FizzBuzz(Inf))
  expect_error(FizzBuzz(-5:25))
})
