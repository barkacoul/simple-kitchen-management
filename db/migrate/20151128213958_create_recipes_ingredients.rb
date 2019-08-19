class CreateRecipesIngredients < ActiveRecord::Migration
  def up
    create_table :recipes_ingredients do |t|
        t.belongs_to :ingredient, index: true
        t.belongs_to :recipe, index: true
      t.timestamps null: false
    end
  end
    def down
    end
end
