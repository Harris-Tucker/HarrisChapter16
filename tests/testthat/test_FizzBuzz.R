# Check to see if the returned length matches the input length
test_that('FizzBuzz list lengths match', {
  expect_equal(length(FizzBuzz(1:10)), 10 )
  expect_equal(length(FizzBuzz(1:98)), 98 )
  expect_equal(length(FizzBuzz(15:30)), 16 )
})
