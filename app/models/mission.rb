class Mission < ApplicationRecord
  belongs_to :user
  has_many :bookings

  has_many :users, through: :bookings

  # validates :title, presence: true
  # validates :description, presence: true
  # validates :location, presence: true
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validates :duration, presence: true
  # validates :reward, numericality: { greater_than: 0 }
end

