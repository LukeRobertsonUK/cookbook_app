class Author < ActiveRecord::Base
  attr_accessible :biography, :email_address, :name, :image
  has_many :recipes
end
