require 'pry'
require_relative '../lib/ingredient'

class Recipe

  attr_reader :name, :ingredients_required

  def initialize(name)
    @name = name
    @ingredients_required = {}
  end

end
