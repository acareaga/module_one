class Vampire

  attr_accessor :name
  attr_accessor :pet

  def initialize(name, pet = "bat", thirsty = true)
    @name = name
    @pet = pet
    @thirsty = thirsty
  end

  def thirsty?
    @thirsty
  end

  def drink
    @thirsty = false
  end

end
