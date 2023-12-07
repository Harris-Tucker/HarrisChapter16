#' FizzBuzz
#'
#' This function takes in a vector of integers. It will leave all integers not
#' divisible by 3 or 5 alone. The integers that are divisible by 3 will be
#' replaced by the word Fizz. The integers divisible by 5 will be replaced by
#' the word Buzz. Should an integer be divisible by both, it will be replaced
#' by the word FizzBuzz.
#'
#'
#' @param a A vector of real integers
#' @return a vector of integers, or the strings Fizz, Buzz, or FizzBuzz
#' @examples
#' FizzBuzz(1:16)
#' FizzBuzz(10:160)
#' @export
FizzBuzz <- function(numbers)
{
  newVector <- c()
  for(i in 1:length( numbers) )
  {
    if(numbers[i] < 1){
      stop('Contains value too small.')
    }
    if(is.infinite(numbers[i])){
      stop('Infinite value passed.')
    }
    if(numbers[i] %% 3 == 0 & numbers[i] %% 5 == 0){
      newVector[i] = "Fizzbuzz "
    } else if (numbers[i] %% 3 == 0){
      newVector[i] = "Fizz"
    } else if(numbers[i] %% 5 == 0){
      newVector[i] = "Buzz"
    }
    else{
      newVector[i] = numbers[i]
    }
  }
  return( newVector )
}
