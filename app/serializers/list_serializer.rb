class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :color
  # belongs_to :user
  has_many :tasks
end
