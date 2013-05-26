class CreateUserStatuses < ActiveRecord::Migration
  def change
    create_table :user_statuses do |t|
      t.integer :user_id
      t.integer :status_id
      t.string :comment
      t.date :status_on

      t.timestamps
    end
  end
end
