require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'
require 'pry'


class PotluckTest < Minitest::Test


  def setup
    @potluck = Potluck.new("7-13-18")
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @summer_pizza = Dish.new("Summer Pizza", :appetizer)
    @roast_pork = Dish.new("Roast Pork", :entre)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @candy_salad = Dish.new("Candy Salad", :dessert)
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

  def test_potluck_dishes_for_empty
    expected = []
    actual = @potluck.dishes
    assert_equal expected, actual
  end

  def test_add_two_dishes_and_inspect_name_of_second
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)

    expected = "Cocktail Meatballs"
    actual = @potluck.dishes[1].name
    assert_equal expected, actual
  end

  def test_add_two_dishes_and_count_them
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)

    expected = 2
    actual = @potluck.dishes.length
    assert_equal expected, actual
  end

  def test_count_of_get_all_from_category
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@candy_salad)

    expected = 2
    actual = @potluck.get_all_from_category(:appetizer).count
    assert_equal expected, actual
  end

  def test_name_of_first_after_get_all_from_category
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@summer_pizza)
    @potluck.add_dish(@roast_pork)
    @potluck.add_dish(@cocktail_meatballs)
    @potluck.add_dish(@candy_salad)

    expected = "Couscous Salad"
    actual = @potluck.get_all_from_category(:appetizer).first.name
    assert_equal expected, actual
  end



end
