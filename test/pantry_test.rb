require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/ingredient'
require_relative '../lib/recipe'
require_relative '../lib/pantry'

class PantryTest < Minitest::Test

  def setup
      @pantry = Pantry.new
      @ingredient1 = Ingredient.new("Cheese", "C", 50)
      @ingredient2 = Ingredient.new("Macaroni", "oz", 200)
      @recipe = Recipe.new("Mac and Cheese")
      @recipe.add_ingredient(@ingredient1, 2)
      @recipe.add_ingredient(@ingredient2, 8)
  end

  def test_pantry_exists_and_starts_empty
    assert_instance_of Pantry, @pantry
    assert_equal @pantry.stock, {}
  end

  def test_pantry_can_check_for_stock
    assert_equal @pantry.stock_check(@ingredient1), 0
  end
end
