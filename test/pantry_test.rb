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
  end

  def test_pantry_exists
    assert_instance_of Pantry, @pantry
  end
end
