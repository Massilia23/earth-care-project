class Mission < ApplicationRecord
  belongs_to :user
  has_many :bookings

  has_many :users, through: :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # geoloc deter a patir adresse de la mission
  # si une adresse modif dans une mission, coordonnées géo update avec if

  # validates :title, presence: true
  # validates :description, presence: true
  # validates :location, presence: true
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validates :duration, presence: true
  # validates :reward, numericality: { greater_than: 0 }
end
