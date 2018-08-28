require "pry"

## Question 1 ##
first_name = "Reuben"
last_name = "Ogbonna"
full_name = first_name + last_name
puts full_name

## Question 2 ##
def digit_finder(number)
    thousands = number/1000
    hundreds = ( number % 1000 ) / 100
    tens = ( number % 1000 % 100) / 10
    ones = ( number % 1000 % 100 % 10)
    {thousands: thousands.floor,
    hundreds: hundreds.floor,
    tens: tens.floor,
    ones: ones}
end

## Question 3 ##
movie_dates = { test_movie1: 1999,
  test_movie2: 2000,
  test_movie3: 2001,
  test_movie4: 2002 }

movie_dates.each_value { |date| puts date }

## Question 4 ##
date_array = movie_dates.values
date_array.each { |x| puts x }

## Question 5 ##
def factorial(num)
    for i in 1...num do
        num = num*i
        i += 1
    end
    num
end

## Question 6 ##
def square(n)
    n**2
end

## Question 7 ##
# User should have used curly braces instead of parentheses #

    