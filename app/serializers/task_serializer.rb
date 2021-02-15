class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :time, :completed, :list, :date_format, :time_format
  has_many :collaborators
  has_one :list
end
