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