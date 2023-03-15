class Mission < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  has_many :users, through: :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  # geoloc deter a patir adresse de la mission
  # si une adresse modif dans une mission, coordonnées géo update avec if
  include PgSearch::Model
    pg_search_scope :search,
      against: [ :title, :location, :start_date ],
      using: {
        tsearch: { prefix: true } # <-- now `superman batm` will return something!
      }
  # validates :title, presence: true
  # validates :description, presence: true
  # validates :location, presence: true
  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validates :duration, presence: true
  # validates :reward, numericality: { greater_than: 0 }
end
