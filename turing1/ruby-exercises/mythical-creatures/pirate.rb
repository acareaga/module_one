class Pirate

  attr_accessor :name, :job, :cursed

  def initialize(name, job = "Scallywag", cursed = 0)
    @name = name
    @job = job
    @cursed = cursed
    @booty = booty
  end

  def cursed?
    if cursed < 3
      false
    else
      true
    end
  end

  def commit_heinous_act
    cursed + 1
  end

  def rob_ships?
    true
    @booty + 100
  end

  def booty
    @booty = 0
  end

end
