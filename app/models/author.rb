class Author < ActiveRecord::Base
  attr_accessible :biography, :email_address, :name, :image
  has_many :recipes

validates :name, presence: true
validates :name, uniqueness: true
validates :email_address, uniqueness:true

end
