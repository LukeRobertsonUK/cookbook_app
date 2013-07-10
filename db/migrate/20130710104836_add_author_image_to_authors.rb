class AddAuthorImageToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :author_image, :string
  end
end
