class Car

  attr_accessor :color
  attr_accessor :wheel_count
  @engine = 0

  def horn
    "BEEEP!"
  end

  def drive(distance)
    "I'm driving #{distance} miles"
  end

  def report_color
    "I am #{color}"
  end

  def report_wheel_count
    "This sweet ride is sitting on #{wheel_count} wheels"
  end

  def start_engine
    if @engine == 0
      "Starting up!"
      @engine += 1
    else
      "BZZT! Nice try, though"
    end
  end
end

my_car = Car.new # creates an instance
puts my_car.horn
puts my_car.drive(12)

my_car.color = 'purple'
puts my_car.report_color

my_car.wheel_count = 18
puts my_car.report_wheel_count

my_second_car = Car.new
my_second_car.wheel_count = 2
puts my_second_car.report_wheel_count
puts my_car.start_engine
puts my_car.start_engine
