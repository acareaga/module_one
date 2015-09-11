class Hobbit

  attr_accessor :name, :disposition, :age

  def initialize(name, disposition = "homebody", age: 0)
    @name = name
    @disposition = disposition
    @age = age
  end

  def disposition
    @disposition
  end

  def celebrate_birthday
    @age += 1
  end

  def adult?
    if @age <= 32
      false
    else
      true
    end
  end

  def old?
    @age = 101
    true
  end

  def has_ring?
    if hobbit.name.starts_with?("F")
      true
    else
      false
    end
  end

  def is_short?
    true
  end

end
