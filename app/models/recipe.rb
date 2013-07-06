class Recipe < ActiveRecord::Base
  attr_accessible :image, :instructions, :meal_category_id, :name, :occaision, :region_id, :ingredients, :author_id
  belongs_to :region
  belongs_to :meal_category
  belongs_to :author
  has_and_belongs_to_many :ingredients
end
