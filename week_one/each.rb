# array = ["alice", "bob", "eve", "chandler"]
#
# new_array = []
#
# array.each do |name|
#   new_array << name.capitalize
# end
#
# puts new_array.inspect

# array = [1, 23, 34, 56, nil, nil, 12, 7]
#
# new_array = []
#
# array.each do |numbers|
#   if numbers
#     new_array << numbers
#   end
# end
#
# puts new_array.inspect


# array = ["pizza", "cheese", "voldemort", "harry"]
#
# new_array = []
#
# array.each do |word|
#   if word.length > 4
#     new_array << word
#   end
# end
#
# puts new_array.inspect

array = ["Alice Smith", "Bob Smith", "Roy Rogers"]

new_array = []

array.each do |name|
  if name.split[1] == "Smith"
    new_array << name
  end
end

puts new_array.inspect
