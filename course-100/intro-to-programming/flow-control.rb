require "pry"

## Question 1 ##
# 1. False because 128 < 129
# 2. False, the !true boolean evaluates to false
# 3. False, although 4 is "truthy", it is not equal to the boolean 'true'
# 4. True, a string and an integer are never equivalent
# 5. True, for these 'or' statements, only one expression has to evaluate to 'true'

## Question 2 ##
def big(phrase)
  phrase.upcase if phrase.length > 10
end

## Question 3 ##
def number_check(num)
  if num < 0
    puts "negative"
  elsif num == 0
    puts "Zero!"
  elsif num > 0 || num <=50
    puts "between 0 and 50"
  else
    puts "Greater than 50"
  end 
end

## Question 4 ##
# 1. "FALSE"
# 2. "Did you get it right?"
# 3. "Alright now!"

## Question 5 ##
def number_check2(num)
  case num 
    when num < 0
      "negative"
    when num == 0
      "Zero!"
    when num > 0 || num <=50
      "between 0 and 50"
    else
      "Greater than 50"
  end 
end

## Question 6 ##
# The method AND the condidtional statements both need 'end' keyword.

