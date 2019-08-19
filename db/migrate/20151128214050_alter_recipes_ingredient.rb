class AlterRecipesIngredient < ActiveRecord::Migration
  def change
      add_foreign_key :recipes_ingredients, :ingredients, on_update: :cascade
      add_foreign_key :recipes_ingredients, :recipes, on_update: :cascade
  end
end
