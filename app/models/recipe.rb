class Recipe < ActiveRecord::Base
  attr_accessible :image, :instructions, :meal_category_id, :name, :occaision, :region_id, :ingredient_ids, :author_id
  belongs_to :region
  belongs_to :meal_category
  belongs_to :author
  has_and_belongs_to_many :ingredients
  accepts_nested_attributes_for :ingredients
end
