class IngredientsRecipe < ActiveRecord::Base
  attr_accessible :ingredients, :recipes
  belongs_to :recipe
  belongs_to :ingredient
end
