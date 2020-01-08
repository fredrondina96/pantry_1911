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

  def restock(ingredient, amount)
    @stock[ingredient] += amount
  end

  def enough_ingredients_for?(recipe)
    #tried to use find here but could not get it to work
  #   recipe.ingredients_required.each do |needed_ingredient|
  #     # binding.pry
  #     @stock.each do |stock|
  #       binding.pry
  #       if ((stock.last < needed_ingredient.last) || (stock.first != needed_ingredient.first))
  #         # binding.pry
  #         return false
  #       end
  #     end
  #   end
  # true
     #  @stock.each do |stocked_item|
     #    # binding.pry
     #    recipe.ingredients_required.each do |needed_ingredient|
     #      # binding.pry
     #      if ((stocked_item.first == needed_ingredient.first) && (stocked_item.last > needed_ingredient.last))
     #            # binding.pry
     #        return
     #      else
     #          binding.pry
     #          return false
     #      end
     #    end
     #  end
     #  binding.pry
     # true
      recipe.ingredients_required.each do |needed_ingredient|
        #need to break to here when first if is true
        @stock.each do |stocked_item|
          # binding.pry
          if ((stocked_item.first == needed_ingredient.first) && (stocked_item.last >= needed_ingredient.last))
              # binding.pry
            break #I think I need to use catch and throw here,
          elsif ((stocked_item.first == needed_ingredient.first) && (stocked_item.last < needed_ingredient.last))
            # binding.pry
            return false
          else
            # binding.pry
            return false
          end
          break
        end
      end
      binding.pry
      true
  end
end
