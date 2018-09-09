## Question 4 ##
daylight = [true, false].sample
def time_of_day(bool)
  puts "It's daytime!" if bool == true
  puts "It's nighttime!" if bool == false
end

time_of_day(daylight)

## Question 6 ##
def assign_name(name="Bob")
  name
end

puts assign_name "Julie"

## Question 8 ##
names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

def sentence(names, activities)
  "#{names.sample} went #{activities.sample} today!"
end

puts sentence(names, activities)