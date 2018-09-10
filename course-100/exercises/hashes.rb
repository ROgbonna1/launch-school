## Question 1 ##
car = {
  type: "sedan",
  color: "blue",
  mileage: 80_000
}

## Question 2 ##
car = {
  type:    'sedan',
  color:   'blue',
  mileage: 80_000,
  year:    2003
}

car.delete(:mileage)
p car

## Question 3 ##
car = {
  type:    'sedan',
  color:   'blue',
  year:    2003
}

puts car[:color]

## Question 4 ##
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

numbers.each do |key, value|
  puts "#{key}: #{value}"
end

## Question 5 ##
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

half_numbers = numbers.values.map { |num| num/2 }
p half_numbers

## Question 6 ##
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

small_numbers = numbers.select do |keys, values|
  values <= 50
end

p small_numbers

## Question 7 ##
numbers = {
  high:   100,
  medium: 50,
  low:    10
}

p numbers

numbers.select! do |key, value|
  value < 25
end

p numbers

## Question 8 ##
vehicles = {
  :car => { 
    type: "sedan",
    color: "blue",
    year: 2003
  },
  :truck => {
    type: "pickup",
    color: "red",
    year: 1998
  }
}
puts vehicles[:car][:color]
puts vehicles[:truck][:year]

vehicles.each do |vehicle, attribute|
  vehicles[vehicle].each do |attribute, stat|
    puts "The #{vehicle} #{attribute} is: #{stat}!"
  end
end
