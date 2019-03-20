require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require 'pry'


class DishTest < Minitest::Test

  def setup
    @dish = Dish.new("Couscous Salad", :appetizer)
  end

  def test_dish_exists
    expected = Dish
    actual = @dish
    assert_instance_of expected, actual
  end

  def test_salad_name
    expected = "Couscous Salad"
    actual = @dish.name
    assert_equal expected, actual
  end

  def test_salad_category
    expected = "Couscous Salad"
    actual = @dish.name
    assert_equal expected, actual
  end

end
