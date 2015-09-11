def is_divisible_by_seven?(input)
  input % 7 == 0
end

def is_divisible_by_five?(input)
  input % 5 == 0
end

def is_divisible_by_three?(input)
  input % 3 == 0
end

(1..1000).each do |number|
  if is_divisible_by_three?(number) && is_divisible_by_five?(number) && is_divisible_by_seven?(number)
    print "SuperFizzBuzz"
  elsif is_divisible_by_three?(number) && is_divisible_by_seven?(number)
    print "SuperFizz"
  elsif is_divisible_by_five?(number) && is_divisible_by_seven?(number)
    print "SuperBuzz"
  elsif is_divisible_by_three?(number)
    print "Fizz"
  elsif is_divisible_by_five?(number)
    print "Buzz"
  elsif is_divisible_by_seven?(number)
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
