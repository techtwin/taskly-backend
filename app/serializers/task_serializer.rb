class TaskSerializer < ActiveModel::Serializer
  attributes :id
  has_many :collaborators
  has_many :lists
end
