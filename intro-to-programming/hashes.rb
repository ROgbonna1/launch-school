require "pry"

## Question 1 ##
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
          
def immediate(fam_hash)
  fam_hash.select do |key, value|
    key == :mother || key == :father || key == :brothers || key == :sisters
  end
end
# can return an array of all family members by calling this method with 'family' as an argument.
# immediate(family).values.flatten
# => ["jane", "jill", "beth", "frank", "rob", "david"]

## Question 2 ##
# '.merge' will return the newly merged hash. '.merge!' with the bang operator is destructive. It will permanently alter the calling array by merging it with the new array.
a_hash = {key1: 'value1', key2: 'value2', key3: 'value3'}
b_hash = {key4: 'value4', key5: 'value5', key6: 'value6'}

new_hash = a_hash.merge(b_hash)
p new_hash
p a_hash

a_hash.merge!(b_hash)
p a_hash

## Question 3 ##
def p_keys(hash)
  hash.each do |key, value|
    puts key
  end
end

def p_values(hash)
  hash.each do |key, value|
    puts value
  end
end

def p_hash(hash)
  hash.each do |key, value|
    puts "#{key}: #{value}"
  end
end

## Questionn 4 ##
# person[:name]

## Question 5 ##
p a_hash.has_value?('key7')

## Question 6 ##
# check if word.length == target.length
# check if target.include?(word[0])
# if everything checks out... annn_array << target and words.delete!(target)
def anna(word_array)
  anna_hash = {}
  test_array = word_array
  word_array.each do |word|
    anna_hash[word.to_sym] = test_array.select do |target|
      target.split('').sort == word.split('').sort
    end
  end
  anna_hash.values.uniq.delete_if {|array| array.length == 1}
end

## Question 7 ##
# In my_hash, the value "some value" is stored under a symbol x. In my_hash2, "some value" is stored under a variable key, x, which holds the string, "hi there"

## Question 8 ##
# B. There is no methed called 'keys' for Array objects