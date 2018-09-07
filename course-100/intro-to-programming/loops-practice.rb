question_1 = Proc.new {
  loop do
    puts 'This is the outer loop.'
  
    loop do
      puts 'This is the inner loop.'
      break
    end
    break
  end
  
  puts 'This is outside all loops.'
}

question_2 = Proc.new {
  iterations = 1
  
  loop do
    puts "Number of iterations = #{iterations}"
    iterations += 1
    break if iterations > 5
  end
}

question_3 = Proc.new {
  loop do
    puts 'Should I stop looping?'
    answer = gets.chomp.downcase
    break if answer == 'yes' || answer == 'y' 
  end
}

question_4 = Proc.new {
  say_hello = true
  count = 0
  while say_hello
    puts 'Hello!'
    count += 1
    say_hello = false if count == 5
  end
}

question_5 = Proc.new {
  count = 1
  while count <=5
    puts rand(1..100)
    count += 1
  end
}

question_6 = Proc.new {
  count = 1
  
  until count > 10
    puts count
    count += 1
  end
}

question_7 = Proc.new {
  numbers = [7, 9, 13, 25, 18]
  until numbers == []
    puts numbers.last
    numbers.pop
  end
}

question_8 = Proc.new {
  for i in 1..100
    puts i if i.odd?
  end
}

question_9 = Proc.new {
  friends = ['Sarah', 'John', 'Hannah', 'Dave']
  for i in 0...4
    puts "Hello! It's great to see you, #{friends[i]}!"
  end
}

question_10 = Proc.new {
  count = 1
  
  loop do
    even_or_odd = "even" if count.odd? == false
    even_or_odd = "odd" if count.odd? == true
    puts "#{count} is #{even_or_odd}."
    count += 1
    break if count > 5
  end
}

question_11 = Proc.new {
  loop do
    number = rand(100)
    puts number
    break if number.between?(0,10)
  end
}

question_12 = Proc.new {
  process_the_loop = [true, false].sample
  if process_the_loop
    loop do
      puts "The loop was processed."
      break
    end
  else
    puts "The loop was not processed."
  end
}

question_13 = Proc.new {
  loop do
    puts 'What does 2 + 2 equal?'
    answer = gets.chomp.to_i
    break if answer == 4
    puts "Wrong answer! Try again!"
  end
  
  puts "That's correct!"
}

question_13 = Proc.new {
  numbers = []
  
  loop do
    puts 'Enter any number:'
    input = gets.chomp.to_i
    numbers << input
    break if numbers.length == 5
  end
  p numbers
}

question_14 = Proc.new {
  names = ['Sally', 'Joe', 'Lisa', 'Henry']
  loop do
    puts names.shift
    break if names.empty?
  end
}

question_15 = Proc.new {
  5.times do |index|
    p index
    break if index == 2
  end
}

question_16 = Proc.new {
  number = 0
  
  until number == 10
    number += 1
    next if number.odd?
    puts number
  end
}

question_17 = Proc.new {
  number_a = 0
  number_b = 0
  puts "Number A is #{number_a}!"
  puts "Number B is #{number_b}!"
  loop do
    number_a += rand(2)
    number_b += rand(2)
    puts "Number A is #{number_a}!"
    puts "Number B is #{number_b}!"
    next if number_a < 5 && number_b < 5
    puts "We reached 5!"
    break
  end
}

def greeting
  puts 'Hello!'
end

number_of_greetings = 2
while number_of_greetings > 0 
  greeting
  number_of_greetings -= 1
end