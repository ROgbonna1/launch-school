## Question 2 ##
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
p my_pets

## Question 3 & 4 ##
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
my_pets << pets[1]
p my_pets

## Question 5 ##
colors = ['red', 'yellow', 'purple', 'green']
colors.each { |color| puts "I'm the color #{color}!"}

## Question 6 ##
numbers = [1, 2, 3, 4, 5]
doubled_numbers = numbers.map { |number| number*2}
p doubled_numbers

## Question 7 ##
numbers = [5, 9, 21, 26, 39]
divisible_by_three = numbers.select { |num| num % 3 == 0 }
p divisible_by_three 

## Question 10 ##
array1 = [1, 5, 9]
array2 = [1, 9, 5]

puts array1 == array2