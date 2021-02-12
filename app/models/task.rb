class Task < ApplicationRecord
  belongs_to :list, optional: true
  has_many :collaborators
  has_many :users, through: :collaborators

  def date_format
    self.created_at.strftime("%b %d %Y")
  end

  def time_format 
    self.created_at.strftime("%l:%M %p")
  end

end
