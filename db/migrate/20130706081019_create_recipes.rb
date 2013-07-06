class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :meal_category_id
      t.string :occaision
      t.integer :region_id
      t.string :image
      t.string :instructions
      t.references :meal_category
      t.references :region
      t.timestamps
    end
  end
end
