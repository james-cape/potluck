class Potluck

  attr_reader :date, :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  # def get_all_from_category(category)
  #   dishes_in_category = []
  #   @dishes.each do |dish|
  #     dishes_in_category << dish if dish.category == category
  #   end
  #   dishes_in_category

  def get_all_from_category(category)
    @dishes.find_all do |dish|
      dish.category == category
    end
  end

end
