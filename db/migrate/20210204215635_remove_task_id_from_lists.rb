class RemoveTaskIdFromLists < ActiveRecord::Migration[6.0]
  def change
    remove_reference :lists, :task, foreign_key: true
  end
end
