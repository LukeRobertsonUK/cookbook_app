class Author < ActiveRecord::Base
  attr_accessible :biography, :email_address, :name
  has_many :recipes
end
