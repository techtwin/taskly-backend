class User < ApplicationRecord
  has_many :friend_requests_as_requestor, foreign_key: :requestor_id, class_name: :FriendRequest
  has_many :friend_requests_as_receiver, foreign_key: :receiver_id, class_name: :FriendRequest

  has_many :lists
  has_many :tasks, through: :lists

  has_many :collaborators
  has_many :notes, through: :collaborators, class_name: :Task

  has_secure_password
  validates :username, uniqueness: true
end
