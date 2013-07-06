class CreateMealCategories < ActiveRecord::Migration
  def change
    create_table :meal_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
