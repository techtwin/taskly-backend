class Task < ApplicationRecord
  belongs_to :list, optional: true
  belongs_to :user
  has_many :collaborators
  has_many :users, through: :collaborators
end
