class CreateRecipes < ActiveRecord::Migration
  def up
    create_table :recipes do |t|
        t.string "recipe_name", :limit=> 40, :null =>false
        t.float "portion_cost", :null =>false
        t.float "sub_cost",  :null =>false
        t.float "waste_cost",  :null =>false
        t.float "selling_price",  :null =>false
        t.belongs_to :chef, index: true

      t.timestamps null: false
    end
  end
    def down
        drop_table :recipes
    end
end
