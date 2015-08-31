# local <-- hapiness
# instance <-- they get shit done
# globals <-- quarintine these on outskirts of program

class Teller
  def register
    @register
  end

  def initialize(money)
    @register = money
  end

  def make_change(owed, paid)
    change = paid - owed
    @register += paid
    @register -= change
    change
  end
end

debbie = Teller.new(100)
debbie.make_change(17, 20)
debbie.register
