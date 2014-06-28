class Hotel < ActiveRecord::Base
  validates :title, presence: true, length: { maximum:300}
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
end
