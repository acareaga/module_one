class Dragon

  attr_accessor :name, :rider, :color, :times_ate

  def initialize(name, color, rider, hungry = true, times_ate = 0)
    @name = name
    @color = color
    @rider = rider
    @hungry = hungry
    @times_ate = times_ate
  end

  def hungry?
    @hungry
  end

  def eat
    @times_ate += 1
    if @times_ate < 3
      @hungry = true
    else
      @hungry = false
    end
  end

end
