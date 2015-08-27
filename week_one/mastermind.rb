# markdown: https://github.com/turingschool/curriculum/blob/master/source/projects/mastermind.markdown
# video: https://www.youtube.com/watch?v=OPeBUDXKGqA

# 1. Welcome user to Mastermind - Enter main loop
# 2. Prompt game play, instructions, or quit
# 3. If (i), display instructions
# 4. If (q), break out of main loop. Display "Thanks for playing!"
# 5. If (p), enter game play loop
# 6. Prompt user to select a sequence of pegs
# 7. Test guess against secret_pegs
# 8. If correct, break game loop into "You Won!, play again?" message
# 9. If incorrect, loop back to "user selection" #6
# 10. Repeat 6-9 until winning selection or user quits


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
