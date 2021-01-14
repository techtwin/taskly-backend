class FriendRequestSerializer < ActiveModel::Serializer
  attributes :id, ,:receiver_id, :requestor_id, :status
end
