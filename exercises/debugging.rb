## Question 1 ##

def find_first_nonzero_among(numbers)
  numbers.each do |n|
    return n if n.nonzero?
  end
end

# Examples

p find_first_nonzero_among([0, 0, 1, 0, 2, 0])
p find_first_nonzero_among([1])


## wrong number of arguments (given 6, expected 1) (ArgumentError)... method expects 1 array. Instead it's given 6 integers.

## Question 2 ##
def predict_weather
  sunshine = [true, false].sample

  if sunshine
    puts "Today's weather will be sunny!"
  else
    puts "Today's weather will be cloudy!"
  end
end

predict_weather

# Originally, sunshine was set from a random sample of the array ['true', 'false']. As opposed to the boolean false, the string 'false' is a "truthy" value. 

## Question 3 ##
def multiply_by_five(n)
  n * 5
end

puts "Hello! Which number would you like to multiply by 5?"
number = gets.to_i

puts "The result is #{multiply_by_five(number)}!"

# Without a conversion to_i, the number variable will store the user input as a string and simply concatenate it with itself as opposed to multiplying

## Question 4 ##
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'

p pets

# must add 'bowser' onto the :dog array, not replace it pets[:dog]

## Question 5 ##
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers

# use #select not #map to construct a new array of elements adhering to a set of criteria

## Question 6 ##
def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.'
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.'
  end

  if person == 'Einstein'
    'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') +'"'

# The 'return' statement seems to do the trick but I don't know why. Without the return statement, the method returned 'nil'.

## Question 7 ##
# Financially, you started the year with a clean slate.

balance = 0

# Here's what you earned and spent during the first three months.

january = {
  income: [ 1200, 75 ],
  expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
}

february = {
  income: [ 1200 ],
  expenses: [ 650, 140, 320, 46.7, 122.5 ]
}

march = {
  income: [ 1200, 10, 75 ],
  expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
}

# Let's see how much you've got now...

def calculate_balance(month)
  plus  = month[:income].sum
  minus = month[:expenses].sum

  plus - minus
end

[january, february, march].each do |month|
  balance += calculate_balance(month)
end

puts calculate_balance march
puts balance

# The block was simply calculating the balance for each month, not adding them together. To do that, I set a variable, balance, equal to zero and incremented it by each month's balance.

## Question 8 ## 
colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

colors.shuffle!
things.shuffle!

i = 0
loop do
  break if i == things.length

  if i == 0
    puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
  else
    puts 'And a ' + colors[i] + ' ' + things[i] + '.'
  end

  i += 1
end

# The length of the colors array was longer. So we must break when i exceeds the length of the things array. Otherwise, things[7] will return 'nil' which cannot be converted into a string.

## Question 9 ##
def digit_product(str_num)
  digits = str_num.chars.map { |n| n.to_i }
  product = 1

  digits.each do |digit|
    product *= digit
  end

  product
end


p digit_product('12345')
# expected return value: 120
# actual return value: 0
# Was originally returning 0 because product was initially set to 0. Multiplying anything by 0 will always return 0. Instead, set product initially equal to 1.

## Question 10 ##
# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase.to_sym

player.merge!(character_classes[input])

puts 'Your character stats:'
puts player

# Must convert user input to symbol. And must use bang operator to destructively alter the player stats.



