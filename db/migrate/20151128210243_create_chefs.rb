class CreateChefs < ActiveRecord::Migration
  def up
    create_table :chefs do |t|
        t.string "first_name", :limit=> 20, :null =>false
        t.string "last_name", :limit=> 20, :null =>false
        t.string "email",  :limit=> 50, :null =>false
        t.string "password",  :limit=> 30, :null =>false
        t.date "DOB" 

      t.timestamps null: false
    end
  end
    def down
        drop_table :chefs
    end
end
