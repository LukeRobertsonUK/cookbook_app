class Recipe < ActiveRecord::Base
  attr_accessible :image, :instructions, :meal_category_id, :name, :occaision, :region_id, :ingredient_ids, :author_id, :ingredients, :ingredients_recipes
  belongs_to :region
  belongs_to :meal_category
  belongs_to :author
  has_many :ingredients_recipes
  has_many :ingredients, :through => :ingredients_recipes

  accepts_nested_attributes_for :ingredients

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :author, presence: true
  validates :region, presence: true
  validates :meal_category, presence: true

  validate :sufficient_ingredients

  def ingredients_greater_than_one?
    self.ingredients.size>0
  end

  def sufficient_ingredients
    unless self.ingredients_greater_than_one?
      errors.add(:base, "You need to select at least one ingredient")
    end
  end




end
