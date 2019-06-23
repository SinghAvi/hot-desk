class Staff < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings, :dependent => :destroy
  enum role: [:regular, :admin]
  scope :general_staffs, -> { where(:role => 'regular') }
  scope :admin?, -> { where(:role => 'admin') }
end
