require 'pry'
require_relative '../lib/recipe'
require_relative '../lib/ingredient'

class Pantry

  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

end
