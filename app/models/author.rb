class Author < ActiveRecord::Base
  attr_accessible :biography, :email_address, :name, :image, :author_image
  has_many :recipes
 mount_uploader :author_image, AuthorImageUploader


validates :name, presence: true
validates :name, uniqueness: true
validates :email_address, uniqueness:true

end
