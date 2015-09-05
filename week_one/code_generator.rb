class CodeGenerator

  attr_accessor :mystery

  def initialize()
    @mystery = mystery
  end

  def mystery_sequence
    colors = [ "r", "b", "g", "y" ]
    mystery = []
    colors.each {|e| mystery << colors.shuffle.sample }
    mystery
  end

end

code = CodeGenerator.new()
puts code.mystery_sequence
