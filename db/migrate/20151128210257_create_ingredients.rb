class CreateIngredients < ActiveRecord::Migration
  def up
    create_table :ingredients do |t|
        t.string "ingredient_name", :limit=> 40, :null =>false
        t.string "unit", :limit=> 15, :null =>false
        t.float "unit_cost",  :null =>false
       
      t.timestamps null: false
    end
  end
    def down
    end
end
