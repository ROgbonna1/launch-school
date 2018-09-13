require "pry"

## Question 1 ##

def greeter(name)
  puts "Hey, #{name}!"
end

## Question 2 ##
# 1. 2, 2. nil, 3. nil, 4. "four", 5. nil #

## Question 3 ##
def multiply(a, b)
  a*b
end

## Question 4 ##
# Will return nothing because of the return statement before the puts call #

## Question 5 ##
def scream(words)
  words = words + "!!!"
  puts words
  return words
end

## Question 6 ##
# Only one argument was passed in when two are needed to invoke the method #