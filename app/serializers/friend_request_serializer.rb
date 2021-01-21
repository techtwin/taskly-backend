class FriendRequestSerializer < ActiveModel::Serializer
  attributes :id, ,:receiver_id, :requestor_id, :status

  def receiver
    {
    id: self.object.receiver.id,
    name: self.object.receiver.name,
    img: self.object.receiver.img
    }
  end
end
