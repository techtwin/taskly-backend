class Task < ApplicationRecord
  belongs_to :list, optional: true
  has_many :collaborators
  has_many :users, through: :collaborators
end
