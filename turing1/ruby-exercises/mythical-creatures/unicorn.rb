class Unicorn
  attr_accessor :name
  attr_accessor :color

  def initialize(name, color = "white", say = "something")
    @name = name
    @color = color
    @say = say
  end

  def white?
    color == "white"
  end

  def say(something)
    "**;* #{something} **;*"
  end

end
