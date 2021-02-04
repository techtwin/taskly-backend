class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :time, :completed
  has_many :collaborators
  belongs_to :list
  belongs_to :user
end
