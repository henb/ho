class Hotel < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true
  validates :title, presence: true, length: { maximum: 300 }
  validates :star_rating, presence: true, numericality: true, inclusion: { in: 0..7, message: '%{value} is not included in 0..7' }
  validates :price_for_room, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  mount_uploader :photo, PhotoUploader
  letsrate_rateable 'rate'
end
