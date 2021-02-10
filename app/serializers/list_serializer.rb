class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :color, :user
  # belongs_to :user
  has_one :user
  has_many :tasks
end
