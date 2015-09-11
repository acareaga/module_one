valid = false

digits = "5541808923795240".split("").map { |number| number.to_i }

numbers = []

digits.each_with_index do |digit, index|
  if index.even?
    numbers << digit * 2
  else
    numbers << digit
  end
end

summed_digits = []
numbers.map do |number|
  if number > 9
    summed_digits << 1 + number - 10
  else
    number < 10
    summed_digits << number
  end
end

sum = summed_digits.reduce(:+)
valid = (0 == sum % 10)

if valid
    puts "This number is valid!"
  else
    puts "This number is invalid!"
end
