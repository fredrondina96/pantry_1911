require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/ingredient'

class IngredientTest < Minitest::Test

  def setup
    @ingredient = Ingredient.new("Cheese", "oz", 50)
  end

  def test_ingredient_has_attributes
    assert_instance_of Ingredient, @ingredient
  end
end
