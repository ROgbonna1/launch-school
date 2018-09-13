## Question 4 ##
boolean = [true, false].sample
boolean ? puts("I'm true!") : puts("I'm false!")

## Question 7 ##
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
  when 'green'
    puts "Go!"
  when 'yellow'
    puts 'Slooowww'
  when 'red'
    puts 'STOP!'
end

## Question 8 ##
stoplight = ['green', 'yellow', 'red'].sample

if stoplight == 'green'
  puts 'Go!'
elsif stoplight == 'yellow'
  puts 'Slow down!'
elsif stoplight == 'red'
  puts 'Stop!'
end

## Question 9 ##
status = ['awake', 'tired'].sample
advice = "Be productive!" if status == 'awake'
advice = "Go to sleep!" if status == 'tired'
puts advice

## Question 10 ##
number = rand(10)

if number == 5
  puts '5 is a cool number!'
else
  puts 'Other numbers are cool too!'
end

## Question 11 ##
stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green'  then puts 'Go!'
when 'yellow' then puts 'Slow down!'
else               puts 'Stop!'
end