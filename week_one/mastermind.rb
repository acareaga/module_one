# markdown: https://github.com/turingschool/curriculum/blob/master/source/projects/mastermind.markdown
# video: https://www.youtube.com/watch?v=OPeBUDXKGqA
# instructions: http://www.hasbro.de/manuals/14151i02.pdf

# 1. Welcome user to Mastermind - enter main loop
# 2. Prompt game play, instructions, or quit
# 3. If (i), display instructions
# 4. If (q), break out of main loop. Display "Thanks for playing!"
# 5. If (p), enter game play loop
# 6. Prompt user to select a sequence of pegs
# 7. Test guess against secret_pegs
# 8. If correct, break game loop into "You Won!, play again?" message
# 9. If incorrect, loop back to "user selection" #6
# 10. Repeat 6-9 until winning selection or user quits

play = "play"
instructions = "instructions"
quit = "quit"

user_guess = ""
@mystery_sequence = " rgby"

# def mystery_sequence
#   rand(color)
#   # need to fix
# end

def play_game
  print "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.

        What's your guess?"

  user_guess = gets.chomp # compare against mystery_sequence

  if user_guess == @mystery_sequence
  puts "Congratulations! You guessed the sequence #{user_guess} in 8 guesses over 4 minutes, 22 seconds. Do you want to (p)lay again or (q)uit?"

  else
    puts "I'm sorry, that is incorrect. You got two colors and no positions correct. Please guess again:"
  end
end

puts @mystery_sequence

puts "Welcome to MASTERMIND."

loop do # Main Game Loop
  puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  answer = gets.chomp

  if answer == "i"
    puts "The objective is to break the secret code in the fewest number of guesses. Try to guess the exact colors (R, G, B, Y) in the positions of the hidden Code pegs."
  elsif answer == "q"
    break
  else answer == "p"
    play_game
  end
end

# if user_guess == mystery_sequence
#   puts "Congratulations! You guessed the sequence #{user_guess} in 8 guesses over 4 minutes, 22 seconds.
#
#       Do you want to (p)lay again or (q)uit?"
#   if answer == "q"
#     #break
#   else answer == "p"
#     play_game
#   end
# end

# After generating random board:  next easiest step is how you can determine how many colors are in the correct position
