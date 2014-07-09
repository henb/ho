class User < ActiveRecord::Base
  extend Enumerize
  before_save { self.role = :user unless role.admin? }
  has_many :comments, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  letsrate_rater

  enumerize :role, in: [:guest, :user, :admin], default: :guest, predicates: true
end
