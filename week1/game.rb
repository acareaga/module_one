class Game

  attr_accessor :user_guess

  def initialize
    @user_guess = user_guess
  end

  def user_input
    puts "What's your guess?"
    @user_guess = gets.chomp.downcase
    valid_choice?
  end

  def valid_choice?
    @user_guess.split(//).each do |color|
      (color == "r") || (color == "b") || (color == "y") || (color == "g")
    end
  end

end

g = Game.new
g.user_input

loop do
  if @user_guess.valid_choice?
    break
  else
    puts "Not valid choice. Try again."
    gets.chomp.downcase
  end
end
