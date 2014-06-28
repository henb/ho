class Comment < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :user

  validates :description, presence: true
  def autor?(user)
  	self.user == user
  end
end
