class AlterRecipe < ActiveRecord::Migration
  def change
        add_foreign_key :recipes, :chefs, on_update: :cascade

  end
end
