# Given the array ["pizza", "cheese", "steak"] Use .each to print out each word capitalized.

# array = ["pizza", "cheese", "steak"]
# new_array = []
#
# array.each do |word|
#   new_array << word.capitalize
# end
#
# puts new_array.inspect

# Given the array [1,2,3,4,5], use .each to create an array of each number doubled.

# array = [1, 2, 3, 4, 5]
# new_array = []
#
# array.each do |number|
#   new_array << number * 2
# end
#
# puts new_array.inspect

# Given the array ["apple", "pie", "ice cream"], use .each to determine which string is the longest.

# array = ["apple", "pie", "ice cream"]
# max_length = 0
# longest_string = []
#
# array.each do |food|
#   if max_length > longest_string
#     max_length << food
#   end
# end
#
# puts longest_string

# Given the array [1,2,3,4,5], use .each to give us an array consisting of only even numbers.

# array = [1, 2, 3, 4, 5]
# new_array = []
#
# array.each do |number|
#   if number.even?
#     new_array << number
#   end
# end
#
# puts new_array

# Given the array [1,2,3,4,5], use .each to give us an array consisting of numbers that are NOT even.

# array = [1, 2, 3, 4, 5]
# new_array = []
#
# array.each do |number|
#   if number.odd?
#     new_array << number
#   end
# end
#
# puts new_array.inspect

# Given the array [1,1,1,3,4] use.each to give us an array consisting of how many times the nubmer 1 appears.

# array = [1, 1, 1, 3, 4]
# count = 0
#
# array.each do |number|
#   if number == 1
#     count += 1
#   end
# end
#
# puts count.inspect

# Given the array [ ['Frank', 33], ['Stacy', 15], ['Juan', 24], ['Dom', 32], ['Steve', 24], ['Jill', 24] ] use .each to determine who is the oldest.

# array = [ ['Frank', 33], ['Stacy', 15], ['Juan', 24], ['Dom', 32], ['Steve', 24], ['Jill', 24] ]
# oldest_person = ["blank", 0]
#
# array.each do |age|
#   if age[1] > oldest_person[1]
#     oldest_person = age
#   end
# end
#
# puts oldest_person.inspect

# Given the array [ ['Frank', 33], ['Stacy', 15], ['Juan', 24], ['Dom', 32], ['Steve', 24], ['Jill', 24] ] use .each to determine the average age.

array = [ ['Frank', 33], ['Stacy', 15], ['Juan', 24], ['Dom', 32], ['Steve', 24], ['Jill', 24] ]
average_age = 0

array.each do |name, age|
  average_age += age
end

puts average_age.inspect

# Given the array [ ['Frank', 33], ['Stacy', 15], ['Juan', 24], ['Dom', 32], ['Steve', 24], ['Jill', 24] ] use .each to determine how many people are 24.

# array = [ ['Frank', 33], ['Stacy', 15], ['Juan', 24], ['Dom', 32], ['Steve', 24], ['Jill', 24] ]
# twenty_four_count = 0
#
# array.each do |name, age|
#   if age == 24
#     twenty_four_count += 1
#   end
# end
#
# puts twenty_four_count.inspect
