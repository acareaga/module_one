class Plane
  attr_reader :engine1, :engine2, :engine3, :engine4

  def initialize
    @engine1 = Engine.new
    @engine2 = Engine.new
    @engine3 = Engine.new
    @engine4 = Engine.new
  end

  def engine_status
    engine1.start
  end

end

class Engine
  attr_reader :running

  def initialize(running=false)
    @running = running
  end

t  def start
    @running = true
  end

end

dusty = Plane.new
dusty.start
