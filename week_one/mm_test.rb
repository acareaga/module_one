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

colors = [ "r", "b", "g", "y" ]
user_guess = ""
mystery_sequence = ["r", "r", "r", "r"] # @colors.sample(4)
incorrect_guess_try_again_user_feedback = ""
start_time = 0
end_time = 0
number_of_guesses = 0
colors_correct = 0
positions_correct = 0

# def colors_correct_counter
#   colors_correct = 0
#   @user_guess.each_with_index do |color, index|
#     if color == @mystery_sequence[color]
#       colors_correct += 1
#     end
#   end
# end
#
# def positions_correct_counter
#   positions_correct = 0
#   @user_guess.each_with_index do |color, index|
#     if index == @mystery_sequence[index]
#       positions_correct += 1
#     end
#   end
# end
#
# def guess_counter
#   loop do
#     if @user_guess != @mystery_sequence
#       @number_of_guesses += 1
#     end
#   end
# end

puts "Welcome to MASTERMIND. \nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
initial_user_response = gets.chomp

if initial_user_response.downcase.include?("i")
  puts "The objective is to break the secret code in the fewest number of guesses. \nTry to guess the exact colors (R, G, B, Y) in the positions of the hidden Code pegs."
elsif initial_user_response.downcase.include?("q")
  exit
else initial_user_response.downcase.include?("p")
  puts "I've generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. \nUse (q)uit at any time to end the game."
  start_time = Time.now

  loop do
    puts "What's your guess?"
    user_guess = gets.chomp.downcase

    if user_guess.chars == mystery_sequence
      end_time = Time.now
      minutes_played = end_time.min - start_time.min
      seconds_played = end_time.sec - start_time.sec # need to fix +/- sec on min change

      puts "Congratulations! \nYou guessed the sequence #{user_guess.upcase} in #{number_of_guesses} guesses over #{minutes_played} minutes and #{seconds_played} seconds. \nDo you want to (p)lay again or (q)uit?"

      play_again_or_quit = gets.chomp

      if play_again_or_quit.downcase.include?("q")
        exit
      end

    elsif user_guess != mystery_sequence
      number_of_guesses += 1
    end

    elsif user_guess.downcase.include?("p")
      play_game_without_initial_prompt
    elsif user_guess.downcase.include?("q")
      exit
    else
      puts "I'm sorry, that is incorrect. You got #{colors_correct} colors and #{positions_correct} positions correct. Please guess again."
    end
  end
end
