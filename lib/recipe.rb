require 'pry'
require_relative '../lib/ingredient'

class Recipe

  attr_reader :name, :ingredients_required, :ingredients

  def initialize(name)
    @name = name
    @ingredients_required = {}
    @ingredients = []
  end

  def add_ingredient(ingredient, amount)
    @ingredients_required[ingredient] = amount
    @ingredients << ingredient
  end

  def amount_required(ingredient)
    @ingredients_required[ingredient]
  end

  def total_calories
    calories = @ingredients_required.map do |ingredient|
      ingredient.first.calories * ingredient.last
    end
    calories.sum
  end
end
