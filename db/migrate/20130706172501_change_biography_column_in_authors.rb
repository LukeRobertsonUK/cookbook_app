class ChangeBiographyColumnInAuthors < ActiveRecord::Migration
   def up
    change_column :authors, :biography, :text
  end

  def down
    change_column :authors, :biography, :string
  end
end
