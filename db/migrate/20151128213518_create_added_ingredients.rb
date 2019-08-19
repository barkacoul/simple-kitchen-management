class CreateAddedIngredients < ActiveRecord::Migration
   def up
      create_table :added_ingredients do |t|
        t.belongs_to :ingredient, index: true
        t.belongs_to :stock_manager, index: true
          t.integer "quantity", :null =>false
         t.date "date_added" ,:null =>false 
          
      t.timestamps null: false
  end
  end
      def down
          drop_table :added_ingredients     
      end
end
