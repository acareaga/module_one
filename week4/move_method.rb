class Engine

  def core_weight
    250            # => 250
  end              # => :core_weight

  def propeller_weight
    50                  # => 50
  end                   # => :propeller_weight

end  # => :propeller_weight

class Plane

  attr_reader :engine  # => nil

  def initialize
    @engine = Engine.new  # => #<Engine:0x007fa59a0f1698>
  end                     # => :initialize

  def body_weight
    1000           # => 1000
  end              # => :body_weight

  def engine_count
    2               # => 2
  end               # => :engine_count

  def engine_weight
    engine_count * (engine.core_weight + engine.propeller_weight)  # => 600
  end                                                              # => :engine_weight

  def weight
    body_weight + engine_weight  # => 1600
  end                            # => :weight

end  # => :weight

dusty = Plane.new  # => #<Plane:0x007fa59a0f16c0 @engine=#<Engine:0x007fa59a0f1698>>
dusty.weight       # => 1600
