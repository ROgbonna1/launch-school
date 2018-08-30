## Question 1 ##
array = [1, 3, 5, 7, 9, 11]
number = 3
puts array.include?(number)

## Question 2 ##
1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   # =>[["b",1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
   arr.first.delete(arr.first.last)
   # => arr.first.delete(1)
   # => "In other words, in the first array, delete the '1'."
   # => .delete mutates the caller so this will alter the array

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   # =>[["b",[1, 2, 3]], ["a", [1, 2, 3]]]
   arr.first.delete(arr.first.last)
   # => arr.first.delete([1, 2, 3])
   # => "In other words, delete the array [1, 2, 3] in the first nested array"
   # => returns [["b", ["a", [1, 2, 3]]]

## Question 3 ##
# arr[1][0]

## Question 4 ##
# 1. 6
# 2. error
# 3. 8

## Question 5 ##
# 1. "e"
# 2. "A"
# 3. nil (returns nil when asked for an index that exceeds the length of the string)

## Question 6 ##
# must reference the index in the array brackets, not the element

## Question 7 ##
def double(arr)
  p arr.map {|x| x + 2 }
  p arr
end
