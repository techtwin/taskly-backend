class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :list_id
      t.string :name
      t.string :description
      t.string :date
      t.string :time
      t.boolean :completed

      t.timestamps
    end
  end
end
