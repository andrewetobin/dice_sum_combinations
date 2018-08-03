require 'minitest/autorun'
require 'minitest/emoji'
require './lib/dice'

class DiceTest < Minitest::Test

  def setup
    @dice = Dice.new
  end

  def test_it_can_create_array_of_all_sides
    assert_equal [1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6, 1, 2, 3, 4, 5, 6], @dice.all_sides(3, 6)
  end

  def test_answer
    expected_1 = [[1, 3, 6], [1, 4, 5], [1, 5, 4], [1, 6, 3], [2, 3, 5], [2, 4, 4], [2, 5, 3], [2, 6, 2], [2, 2, 6], [3, 4, 3], [3, 5, 2], [3, 6, 1], [3, 1, 6], [3, 2, 5], [3, 3, 4], [4, 5, 1], [4, 1, 5], [4, 2, 4], [4, 3, 3], [4, 4, 2], [5, 1, 4], [5, 2, 3], [5, 3, 2], [5, 4, 1], [6, 1, 3], [6, 2, 2], [6, 3, 1]]

    assert_equal expected_1, @dice.answer(3, 6, 10)
    
    assert_equal [[6, 6, 6, 6, 6]], @dice.answer(5, 6, 30)

    expected_2 = [[7, 8, 8, 8], [8, 7, 8, 8], [8, 8, 7, 8], [8, 8, 8, 7]]
    assert_equal expected_2, @dice.answer(4, 8, 31)
  end

  def test_number_of_combinations
    assert_equal 27, @dice.number_of_combinations(3, 6, 10)
    assert_equal 1, @dice.number_of_combinations(5, 6, 30)
    assert_equal 4, @dice.number_of_combinations(4, 8, 31)
  end
end
