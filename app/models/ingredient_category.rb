class IngredientCategory < ActiveRecord::Base
  attr_accessible :name, :ingredients
  has_many :ingredients

  validates :name, presence: true
validates :name, uniqueness: true
end
