1000.times do |number|
  if (number % 3 == 0) && (number % 5 == 0) && (number % 7 == 0)
    print "SuperFizzBuzz"
  elsif (number % 3 == 0) && (number % 7 == 0)
    print "SuperFizz"
  elsif (number % 5 == 0) && (number % 7 == 0)
    print "SuperBuzz"
  elsif (number % 3 == 0)
    print "Fizz"
  elsif (number % 5 == 0)
    print "Buzz"
  elsif (number % 7 == 0)
    print "Super"
  else
    print number
  end
end

# buzz_words = {
#       7 => "Super",
#       3 => "Fizz",
#       5 => "Buzz" }
#
# 1000.times do |number|
#   final_answer = ""
#   buzz_words.keys.each do |key|
#     if number % key == 0
#       final_answer << buzz_words[key]
#     end
#   end
#   if final_answer == ""
#       puts number
#     else
#       puts final_answer
#     end
# end
