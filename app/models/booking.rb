class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :mission

  has_many :vouchers
end
