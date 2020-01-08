require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/ingredient'
require_relative '../lib/recipe'

class RecipeTest < Minitest::Test

  def setup
    @ingredient1 = Ingredient.new("Cheese", "C", 100)
    @ingredient2 = Ingredient.new("Macaroni", "oz", 30)
    @recipe = Recipe.new("Mac and Cheese")
  end

  def test_recipie_exists
    assert_instance_of Recipe, @recipe
  end
end
