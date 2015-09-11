developers = ["Alex", "Bernadette", "Charles", "Dana", "Eddie", "Fernanda", "Gus", "Hiro"]
days = 7

all_possible_pairs = developers.map.with_index do |developer, index|
  ((developers.count - index)-1).times do
    ["#{developer} + developers[#{index+1}]"]
  end
end


pairs_for_day = []
4.times do
  pairs_for_day << all_possible_pairs.pop
end
