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

require 'pry'

# play = "play"
# instructions = "instructions"
# quit = "quit"
# user_guess = ""

# need to fix guess again quit loop and min, sec, guess counters

def play_game # Method for initial play and beyond

  color = [ "r", "b", "g", "y" ]
  mystery_sequence = ["r", "r", "r", "r"] # color.sample(4) remove to allow random generation

  minutes_played = 5 # record game play time
  seconds_played = 20

  guess_counter = 0 # count the number of times it takes to win
  if # user_guess =! mystery_sequence
    guess_counter += 1
  end

  colors_correct = 0 # count colors correct
  if # color[""] == mystery_sequence[""]
    colors_correct += 1
  end

  positions_correct = 0 # count positions correct
  if # color[] == mystery_sequence[]
    positions_correct += 1
  end

  loop do
    puts "What's your guess?"
    user_guess = gets.chomp

    if user_guess.chars == mystery_sequence
      puts "Congratulations! You guessed the sequence #{user_guess.upcase} in #{guess_counter} guesses over #{minutes_played} minutes and #{seconds_played} seconds. Do you want to (p)lay again or (q)uit?"
      second_game_user_choice = gets.chomp
      if (second_game_user_choice == "p") || (second_game_user_choice =='play')
          play_game_without_initial_prompt
      else
          exit
      end
      elsif (second_game_user_choice == "q") || (second_game_user_choice == "quit")
          exit
      else
          puts "I'm sorry, that is incorrect. You got #{colors_correct} colors and #{positions_correct} positions correct. Please guess again:"
    end
  end
end

def first_game_stuff_and_play_a_game
  # Main Game Loop
  first_game_user_choice = gets.chomp
  if (first_game_user_choice == "i") || (first_game_user_choice == "instructions")
    puts "The objective is to break the secret code in the fewest number of guesses. Try to guess the exact colors (R, G, B, Y) in the positions of the hidden Code pegs. Please enter (p)lay, (i)nstructions, or (q)uit"
    play_game
  elsif (first_game_user_choice == "q") || (first_game_user_choice == "quit")
    exit
  else (first_game_user_choice == "p") || (first_game_user_choice == "play")
    puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
    play_game
  end
end

def play_game_without_initial_prompt
  puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
  play_game
end

puts "Welcome to MASTERMIND."
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
first_game_stuff_and_play_a_game
