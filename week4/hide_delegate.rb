class Plane

  attr_reader :engine

  def initialize
    @engines = Array.new(4) {Engine.new}
  end

  def start_engine
    @engines.each { |e| e.start_engine }
  end

end

class Engine

  def start_engine
    @running = true
  end

  def running?
    !!@running
  end
end

dusty = Plane.new
dusty.start_engine
