class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name, :img, :requests_sent, :requests_received
  has_many :lists

  def requests_sent
    self.object.friend_requests_as_requestor.map {|user| User.find(user.receiver_id)}
  end

  def requests_received
    self.object.friend_requests_as_receiver.map {|user| User.find(user.requestor_id)}
  end

end
