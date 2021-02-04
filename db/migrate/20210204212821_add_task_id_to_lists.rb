class AddTaskIdToLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :lists, :task, foreign_key: true
  end
end
