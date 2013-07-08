class Ingredient < ActiveRecord::Base
  attr_accessible :ingredient_category_id, :name, :ingredients_recipes, :recipes, :standard_measure
    belongs_to :ingredient_category
    has_many :ingredients_recipes
    has_many :recipes, through: :ingredients_recipes

validates :name, presence: true
validates :name, uniqueness: true
validates :ingredient_category, presence: true
validates :standard_measure, presence: true

end
