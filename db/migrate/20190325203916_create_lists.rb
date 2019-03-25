class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.boolean :task_complete, default: false
      t.integer :event_id

      t.timestamps
    end
  end
end
