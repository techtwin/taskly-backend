class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :user
  has_one :user
  has_many :tasks
end
