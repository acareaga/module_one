require 'pry'

handle = File.open('./input.txt')

# all the lines, one at a time
# handle.each_line do |line|
#   puts "The lins is: #{l}"
# end

# read just one line
# puts handle.readline
# puts handle.readline
# puts handle.readline
# puts handle.readline

# reading files
# handle = File.open("./input.txt")
# counter = 0
# handle.each_line do |line|
#   puts "THE MAGIC for #{line.chomp.to_i.inspect}"
# end

# writing files
handle = File.open("./output.txt", "w")
handle.write("I LOVE WRITING\n")
handle.write("Still writing\n")
handle.write("More writing\n")
handle.write("Last writing\n")
