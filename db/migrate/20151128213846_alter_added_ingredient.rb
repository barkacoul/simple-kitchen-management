class AlterAddedIngredient < ActiveRecord::Migration
  def change
   add_foreign_key :added_ingredients, :ingredients, on_update: :cascade
      add_foreign_key :added_ingredients, :stock_managers, on_update: :cascade
  
  end
end
