class AllergyCalculator

  def self.calulate(score)
  allergen = { cats: 128, pollen: 64, chocolate: 32, tomatoes: 16, strawberries: 8, shellfish: 4, peanuts: 2, eggs: 1 }

  allergies = []
  allergen.each do |allergy, point|
    if score >= point
      allergies << allergen
      score -= point
    end
  end
  puts allergies.join(",")
end
end

AllergyCalculator.calculate(248)
