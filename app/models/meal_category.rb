class MealCategory < ActiveRecord::Base
  attr_accessible :name, :recipes
  has_many :recipes
end
