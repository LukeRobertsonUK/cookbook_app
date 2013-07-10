class RemoveImageFromAuthors < ActiveRecord::Migration
   def change
      remove_column :authors, :image
  end
end
