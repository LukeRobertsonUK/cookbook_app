class Ingredient < ActiveRecord::Base
  attr_accessible :ingredient_category_id, :name, :recipes
    belongs_to :ingredient_category
    has_and_belongs_to_many :recipes
end
