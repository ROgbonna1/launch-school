

## Question 1 ##
question_1 = Proc.new do
  puts "What is your name?"
  name = gets.chomp
  puts "Hello, #{name}! It's a pleasure to meet you."
end

## Question 2 ##
question_2 = Proc.new do
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "When you retire, the year will be:"
  ret = 65 - age + 2018
  puts "#{ret}!"
end

## Question 3 ##
question_3 = Proc.new do
  puts "What is your name?"
  name = gets.chomp
  10.times { print name, " " }
  print "\n"
end

## Question 4 ##
question_4 = Proc.new do
  puts "What is your first name?"
  first = gets.chomp
  puts "What is your last name?"
  last = gets.chomp
  puts "It's nice to meet you, #{first} #{last}!"
end

## Question 5 ##
# The variable x is defined within the scope of the do/end block. It cannot be accessed outside of it. #

## Question Tester ##
puts "Which question are you testing?"
question = gets.chomp.to_i

case question
  when 1
    question_1.call
  when 2
    question_2.call
  when 3
    question_3.call
  when 4
    question_4.call
  else
    "error. only four questions. input '1', '2', '3', or '4'."
end 