# outline: https://github.com/turingschool/curriculum/blob/master/source/projects/mastermind.markdown
# video: https://www.youtube.com/watch?v=OPeBUDXKGqA
# instructions: http://www.hasbro.de/manuals/14151i02.pdf

# 1. Welcome user to Mastermind - enter main loop
# 2. Prompt game play, instructions, or quit
# 3. If (i), display instructions
# 4. If (q), break out of main loop. Display "Thanks for playing!"
# 5. If (p), enter game play loop
# 6. Prompt user to select a sequence of colors
# 7. Test guess against mystery_sequence
# 8. If correct, break game loop into "You Won!, play again?" message
# 9. If incorrect, provide colors and positions correct, and loop back to "user guess" #6
# 10. Repeat 6-9 until winning selection or user quits

@colors = [ "r", "b", "g", "y" ]
@mystery_sequence = ["r", "r", "r", "r"] # @colors.sample(4)
@user_guess = ""
@number_of_guesses = 1
@positions_correct = 0
@colors_correct = 0
@start_time = 0
@end_time = 0

def play_game # main sequence to play game
  @start_time = Time.now
  loop do
    puts "What's your guess?"
    @user_guess = gets.chomp.downcase
    if @user_guess.chars == @mystery_sequence
      winning_sequence_play_again_or_quit
    elsif @user_guess.downcase.include?("p")
      play_game_without_initial_prompt
    elsif @user_guess.downcase.include?("q")
      exit
    else
      @number_of_guesses += 1
      incorrect_guess_user_feedback
    end
  end
end

def invalid_guess_try_again # prompt user to enter valid guess
  if @user_guess.length < 4
    puts "Your guess is too short. Please enter a valid sequence."
  elsif @user_guess.length > 4
    puts "Your guess is too long. Please enter a valid sequence."
  else
    play_game
  end
end

def first_game_info_and_play_game # initial game prompt and first round play
  initial_user_response = gets.chomp
  if initial_user_response.downcase.include?("i")
    puts "Instructions: \nThe objective is to break the secret code in the fewest number of guesses. \nTry to guess the exact colors - (r)ed, (g)reen, (b)lue, and (y)ellow - in the positions of the hidden code sequence."
    play_game
  elsif initial_user_response.downcase.include?("q")
    exit
  else initial_user_response.downcase.include?("p")
    puts "I've generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. \nUse (q)uit at any time to end the game."
    play_game
  end
end

def play_game_without_initial_prompt # play game without initial prompt
  puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. \nUse (q)uit at any time to end the game."
  play_game
end

def winning_sequence_play_again_or_quit # winning guess, play again or quit
  @end_time = Time.now
  minutes_played = @end_time.min - @start_time.min
  seconds_played = @start_time.sec + (@end_time.sec - @start_time.sec)
  puts "Congratulations! \nYou guessed the sequence #{@user_guess.upcase} in #{@number_of_guesses} guesses over #{minutes_played} minutes and #{seconds_played} seconds. \nDo you want to (p)lay again or (q)uit?"
  play_again_or_quit = gets.chomp
  if play_again_or_quit.downcase.include?("q")
    exit
  end
end

def incorrect_guess_user_feedback # colors and positions guessed correctly, needs work
  @user_guess.each_with_index do |color, index|
    if color == @mystery_sequence[color]
      @colors_correct += 1
    else index == @mystery_sequence[index]
      @positions_correct += 1
    end
    puts "I'm sorry, that is incorrect. You got #{@colors_correct} colors and #{@positions_correct} positions correct. Please guess again."
  end
end

puts "Welcome to MASTERMIND. \nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
first_game_info_and_play_game
