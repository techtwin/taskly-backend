class CreateFriendRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :friend_requests do |t|
      t.integer :receiver_id
      t.integer :requestor_id
      t.string :status

      t.timestamps
    end
  end
end
