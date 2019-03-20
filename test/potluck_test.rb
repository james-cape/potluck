require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'
require 'pry'


class PotluckTest < Minitest::Test


  def setup
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  end

  def test_potluck_exists
    expected = Potluck
    actual = @potluck
    assert_instance_of expected, actual
  end

  def test_potluck_date
    expected = "7-13-18"
    actual = @potluck.date
    assert_equal expected, actual
  end

  def test_potluck_dishes
    expected = []
    actual = @potluck.dishes
    assert_equal expected, actual
  end

  def test_adding_two_dishes_and_inspecting_name_of_second
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)

    expected = "Cocktail Meatballs"
    actual = @potluck.dishes[1].name
    assert_equal expected, actual
  end

  def test_adding_two_dishes_and_counting_them
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)

    expected = 2
    actual = @potluck.dishes.length
    assert_equal expected, actual
  end


end
