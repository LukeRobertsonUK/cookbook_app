module RecipesHelper

  def checkbox(recipe, ingredient)
    check_box_tag "recipe[ingredient_ids][]", ingredient.id, recipe.ingredients.include?(ingredient)
  end


end
