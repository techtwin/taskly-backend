class Task < ApplicationRecord
  belongs_to :list

  has_many :collaborators
  has_many :users, through: :collaborators
end
