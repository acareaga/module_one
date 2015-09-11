class Medusa

  attr_accessor :name, :stare

  def initialize(name)
    @name = name
    @stare = stare
  end

  def respond_to?
    stare
  end

end
