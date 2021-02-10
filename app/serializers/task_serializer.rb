class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :time, :completed, :list
  # has_one :user
  has_many :collaborators
  has_one :list
end
