n = [0..1000]

n.each do |number|
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
