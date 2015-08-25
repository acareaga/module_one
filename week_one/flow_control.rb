# # 1. Easy looping
#
# 5.times do
#   puts "Line"
# end

# # 2. Loop w/Condition
# n = [2, 3, 4, 5, 6]
#
# n.each do |item|
#   if item.even?
#     puts "Line is even"
#   else
#     puts "Line is odd"
#   end
# end
#
# # 3. Three Loops
# # times loop
#
# 5.times do |i|
#   puts "This is my output line #{i + 1}"
# end
#
# # while loop
# i = 1
#
# while i < 6
#   puts "This is my output line " + i.to_s
#   i += 1
# end

# # loop loop :)
# i = 1
#
# loop do
#   puts "This is my output line " + i.to_s
#   i += 1
#   break if i >= 6
# end
#
#
# # 4. Rando Guesser
# secret_number = rand(0..10)
# guess         = rand(0..10)
#
# puts "(The secret number is #{secret_number})"
# puts "(The guess number is #{guess})"
#
# while secret_number != guess
#   puts "Guess is #{guess}"
#   puts "Guess again!"
#   guess = rand(0..10)
# end
#
# puts "Guess is #{guess}"
# puts "You win!"
