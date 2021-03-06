# First & Last
f = "First"
l = "Last"

# A
puts f + l
puts "#{f}#{l}"

# B
puts l + f
puts "#{l}#{f}"

# C
puts f + " " + l
puts "#{f} #{l}"

# D
puts l + " " + f + " " + l + " " + f
puts "#{l} #{f} #{l} #{f}"

# E
puts f + l
puts "#{f}#{l}"

# Names
name_1 = "Megan Smith"
name_2 = "Todd Park"

# A
puts name_1[0..4]
puts name_1.split[0]

# B - NO length of name_2 is different
puts name_2[0..3]
puts name_2.split[0]

# C
puts name_2[0] + name_2[5]
puts name_2.split[0][0] + name_2.split[1][0]

# Just integers
# A
a = 12
b = 65
c = 31
d = 98

average = ((a + b + c + d)/4)
puts average

# B Yes, it's off by 0.5 because the true average is a float.

# C

op = a + b * c / d
puts op # answer = 32

op_two = a + (b * (c/d))
puts op_two # answer = 12

# Strings & Integers - People
a = "Ezra"
b = "Ada"
c = "Yukihiro"
d = "Grace"

total_char = a + b + c + d
puts total_char.length
puts total_char.length / 4

# Birthday
name = "Aaron"
age = 5
happy = "happy " * (age - 1)
puts "Happy #{happy} birthday, #{name}!"

# String Compression
word = "Denver"
middle = word[1..-2].size
first_last = word[0] + middle.to_s + word[-1].capitalize
puts first_last
