class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.belongs_to :user, foreign_key: true
      t.belongs_to :list, foreign_key: true

      t.timestamps
    end
  end
end
