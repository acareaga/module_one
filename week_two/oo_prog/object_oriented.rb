# https://github.com/turingschool/lesson_plans/blob/master/ruby_01-object_oriented_programming_with_ruby/object_oriented_programming.markdown

class Guard
  def initialize
    @status = :guarding
  end
  public :initialize

  def march
    @status = :marching
  end
end

g1 = Guard.new
g2 = Guard.new
g3 = Guard.new

g2.march

g1
g2
g3
