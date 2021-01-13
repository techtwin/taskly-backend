class Task < ApplicationRecord
  has_many :collaborators
  has_many :users, through: :collaborators

  has_many :lists
  has_many people:, through: :lists, class_name: :User
end
