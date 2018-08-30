require "pry"

## Question 1 ##
# "each" when called on an array will always return the same array.

## Question 2 ##
puts "Do you want me to stop?"
response = gets.chomp.downcase
while response != "yes" do
  puts "Okay! I'll keep going then."
  puts "Do you want me to stop now?"
  response = gets.chomp.downcase
end

## Question 3 ##
array = [:friends, :family, :loved_ones]
array.each_with_index do |item, index|
  puts "#{index}: #{item}"
end

## Question 4 ##

def countdown(num)
  puts num
  unless num == 0
    num -= 1
    countdown(num)
  end
end 

puts "What do you want to countdown from?"
count = gets.chomp.to_i
countdown(count)