class Region < ActiveRecord::Base
  attr_accessible :name, :recipes
  has_many :recipes

  validates :name, presence: true
  validates :name, uniqueness: true
end
