require 'pry'

## **** Question 7 ******
div_calc = Proc.new do
  def valid_number?(number_string)
    number_string.to_i.to_s == number_string
  end
  
  puts "Calculator App v0.1 (INTEGERS ONLY)"
  puts "-------------------"
  puts "---- ---- ---- ----"
  puts "\n"
  
  puts "What is your numerator?"
  numer = gets.chomp
  
  ## check to see if numerator is a valid number.
  while valid_number?(numer) == false
    puts "Invalid input. Try again."
    numer = gets.chomp
  end
  
  puts "What is your denominator?"
  denom = gets.chomp
  
  ## check to see if denominator is a valid number.
  while valid_number?(denom) == false
    puts "Invalid input. Try again."
    denom  = gets.chomp
  end
  
  ## check to see if denominator is zero.
  while denom == 0
    puts "Invalid input. Denominator cannot be 0. Try again."
    denom = gets.chomp
  end
  
  quotient = numer.to_f/denom.to_f
  puts "#{numer}/#{denom} = #{quotient.round(2)}"
end

## **** Question 8 *****
question_8 = Proc.new {
  number_of_lines = nil
  loop do
    loop do
      puts '>> How many output lines do you want? Enter a number >= 3:'
      number_of_lines = gets.chomp
      
      ##checks to see if number_of_lines is 'q'. If not, converts to an integer and moves forward.
      break if number_of_lines == 'q' || number_of_lines == 'Q'
      number_of_lines = number_of_lines.to_i
      
      break if number_of_lines >= 3
      puts ">> That's not enough lines."
    end
    
    break if number_of_lines == 'q' || number_of_lines == 'Q'
    
    while number_of_lines > 0
      puts 'Launch School is the best!'
      number_of_lines -= 1
    end
  end
}

## ****Question 10 ****
 def valid_number?(number_string)
    number_string.to_i.to_s == number_string
 end

add_proc = Proc.new do
  
  puts "Calculator App v0.2 (INTEGERS ONLY)"
  puts "------------------- \n"
  
  puts "What is your first number?"
  add_1 = gets.chomp
  
  ## check to see if first number is a valid number.
  while valid_number?(add_1) == false
    puts "Invalid input. Try again."
    add_1 = gets.chomp
  end
  
  puts "What is your second number?"
  add_2 = gets.chomp
  
  ## check to see if second number is a valid number.
  while valid_number?(add_2) == false
    puts "Invalid input. Try again."
    add_2  = gets.chomp
  end
  
  ## check to see if signs are opposite. If not, call the Proc again to restart.
  if add_1.to_f * add_2.to_f > 0
    puts "Invalid input. One integer must be negative. One interger must be positive."
    puts "Try again. \n \n"
    add_proc.call
  end
  
  sum = add_1.to_f + add_2.to_f
  
  ## print only the number sentence for which the neg/pos condidtion was met. (otherwise, since proc is nested, it will print all previous attempts.)
  puts "Great! You've satisfied the conditions! \n #{add_1} + #{add_2} = #{sum}" if add_1.to_f * add_2.to_f < 0
end
add_proc.call