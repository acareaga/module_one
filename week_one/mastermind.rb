# markdown: https://github.com/turingschool/curriculum/blob/master/source/projects/mastermind.markdown
# video: https://www.youtube.com/watch?v=OPeBUDXKGqA

puts "Welcome to MASTERMIND."
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
answer = gets.chomp

play || "p" =
instructions || i =
quit || q =

secret = RRRR
puts "The secret is #{secret}"

loop do # Main Game Loop
  print "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.

        What's your guess?"

  guess = gets.chomp

  # End Game
  print "Congratulations! You guessed the correct sequence: #{guess}.

  Do you want to (p)lay again or (q)uit?"

end


# Instructions - http://www.hasbro.de/manuals/14151i02.pdf
i = print instructions.chomp

instructions = "The objective is to break the secret code in the fewest number of guesses. Try to guess the exact colors and positions of the hidden Code pegs.

Red: you guessed a correct color in the correct position
White: you guessed a correct color in an incorrect position
Blank: you guessed an incorrect color"
