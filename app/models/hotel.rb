class Hotel < ActiveRecord::Base
  validates :title, presence: true, length: { maximum:300}
end
