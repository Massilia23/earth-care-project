class User < ApplicationRecord
  validates :first_name, :last_name, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  # validates :booking, uniqueness: { scope: :mission,
  #   message: 'Just one booking per user' }
  has_one_attached :photo
  has_many :missions, through: :bookings
  has_many :vouchers
end
