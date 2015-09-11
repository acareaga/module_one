class Wizard

  attr_accessor :name, :rested

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @incantation = incantation
    @rested = true
  end

  def bearded?
    @bearded
  end

  def incantation
    @incantation
  end

  def rested?
    @rested
  end

  def cast
    "MAGIC MISSILE!"
  end

end
