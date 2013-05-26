class AddIndexesToTables < ActiveRecord::Migration
  
  def change
    add_index :users, :name
    add_index :statuses, :title
    add_index :user_statuses, :user_id
    add_index :user_statuses, :status_on

    change_column :users, :name, :string, :null => false
    change_column :statuses, :title, :string, :null => false
  end
  
end