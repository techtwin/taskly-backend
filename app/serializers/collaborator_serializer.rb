class CollaboratorSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :user
  belongs_to :task
end
