# # First & Last
# f = "First"
# l = "Last"
#
# # A
# puts f + l
# puts "#{f}#{l}"
#
# # B
# puts l + f
# puts "#{l}#{f}"
#
# # C
# puts f + " " + l
# puts "#{f} #{l}"
#
# # D
# puts l + " " + f + " " + l + " " + f # D
# puts "#{l} #{f} #{l} #{f}"
#
# # E
# puts f + l
# puts "#{f}#{l}"

# Names
name_1 = "Megan Smith"
name_2 = "Todd Park"

# A
puts name_1[0..4]
puts name_1[0..-6]

# B - YES both techniques work for name_2
puts name_2[0..3]
puts name_2[0..-5]

# C
puts name_2[0] + name_2[5]
