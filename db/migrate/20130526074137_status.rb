class Status < ActiveRecord::Migration
  
  def change
    create_table :statuses do |t|
      t.string :title
      t.string :comment

      t.timestamps
    end
  end

end
