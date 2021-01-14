class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.references :list, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :date
      t.string :time
      t.boolean :completed, default: false 

      t.timestamps
    end
  end
end