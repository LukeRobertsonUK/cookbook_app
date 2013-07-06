class IngredientCategory < ActiveRecord::Base
  attr_accessible :name, :ingredients
  has_many :ingredients


end
