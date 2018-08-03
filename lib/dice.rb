class Dice

  def answer(number_of_dice, sides, sum)
    all_sides(number_of_dice, sides).combination(number_of_dice).find_all do |combination|
      combination.sum == sum
    end.uniq
  end

  def all_sides(number_of_dice, sides)
    all_sides = []
    number_of_dice.times do
      all_sides << (1..sides).to_a
    end
    all_sides.flatten
  end

  def number_of_combinations(number_of_dice, sides, sum)
    answer(number_of_dice, sides, sum).count
  end
end
