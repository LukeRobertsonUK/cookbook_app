class ChangeInstructionsColumnInRecipes < ActiveRecord::Migration
  def up
    change_column :recipes, :instructions, :text
  end

  def down
    change_column :recipes, :instructions, :string
  end
end
