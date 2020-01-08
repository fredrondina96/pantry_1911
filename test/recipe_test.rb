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

  def test_recipe_has_attributes
    assert_equal @recipe.name, "Mac and Cheese"
    assert_equal @recipe.ingredients_required, {}
  end

  def test_ingrdients_can_be_added
    @recipe.add_ingredient(@ingredient1, 2)
    @recipe.add_ingredient(@ingredient2, 8)
    assert_equal @recipe.ingredients_required.length, 2
  end

  def test_amount_required_can_be_returned
    @recipe.add_ingredient(@ingredient1, 2)
    @recipe.add_ingredient(@ingredient2, 8)
    assert_equal @recipe.amount_required(@ingredient1), 2
    assert_equal @recipe.amount_required(@ingredient2), 8
  end

  def test_ingredients_can_be_returned
    @recipe.add_ingredient(@ingredient1, 2)
    @recipe.add_ingredient(@ingredient2, 8)
    assert_equal @recipe.ingredients.length, 2
  end

  def test_total_calories_can_be_returned
    @recipe.add_ingredient(@ingredient1, 2)
    @recipe.add_ingredient(@ingredient2, 8)
    assert_equal @recipe.total_calories, 440
  end
end
