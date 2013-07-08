class AddStandardMeasureToIngredients < ActiveRecord::Migration
  def change

    add_column :ingredients, :standard_measure, :string

  end
end
