class ChangeLength < ActiveRecord::Migration
  def change
      change_column :chefs, :password, :string, :limit => 300
      change_column :stock_managers, :password, :string, :limit => 300
  end
end
