class Hotel < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { maximum:300}
  validates :star_rating, presence: true, numericality:true, inclusion: { in:0..10, message: "%{value} is not included in 0..10" }
  validates :price_for_room, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true

  mount_uploader :photo, PhotoUploader
  letsrate_rateable "rate"
end
