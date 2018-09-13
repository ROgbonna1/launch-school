require "pry"

## Questions 1 ##
Array(1..10).each {|num| puts num}

## Question 2 ##
p Array(1..10).select { |num| num > 5 }

## Question 3 ##
p Array(1..10).select { |num| num.odd? }

## Question 4 ##
new = Array(1..10).unshift(0) << 11

## Quesetion 5 ##
new.delete(11) << 3

## Question 6 ##
new.uniq

## Question 7 ##
# Arrays are ordered lists. Hashes are pairs of keys and associated values.

## Question 8 ##
hash_1 = {:test1 => "value1", :test2 => "value2"}
hash_2 = {test3: "value3", "test3" => "value3"}

## Question 9 ##
# 1. h[:b]
# 2. h[:e] = 5
# 3. h.keep_if { |k, v| v < 3.5 }

## Question 10 ##
# Yes! And, of course!

## Question 11 ##
# I'm a fan of the core 2.5.1 docs: https://ruby-doc.org/core-2.5.1 

## Question 12 ##

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
=begin
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2] 


## Question 13 ##
contacts["Joe Smith"][:email]
contacts["Sally Johnson"][:phone]
=end

## Question 14 ##
fields = [:email, :address, :phone]
contact_data.flatten!
contacts.each_key do |name|
  fields.each do |field|
    contacts[name][field] = contact_data.shift
  end
end

## Question 15 ##
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if {|word| word.start_with?("s")}
arr.delete_if {|word| word.start_with?("s","w")}

## Question 16 ##
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a.map {|phrase| phrase.split(" ")}.flatten!

## Question 17 ##
# The hashes are the same
