class CreateIngredientsRecipes < ActiveRecord::Migration
  def change
    create_table :ingredients_recipes, :id => false do |t|
      t.references :ingredient
      t.references :recipe
    end
    add_index :ingredients_recipes, [:ingredient_id, :recipe_id], :uniqueness => true



  end


end
