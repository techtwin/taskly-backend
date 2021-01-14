class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name, :img
  has_many :lists
  has_many :collaborators
  has_many :friend_requests_as_receiver
  has_many :friend_requests_as_requestor
end
