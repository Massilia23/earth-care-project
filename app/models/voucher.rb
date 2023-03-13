require "rqrcode"


class Voucher < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  after_create :generate_code

  def generate_code
    self.code = SecureRandom.hex
    save
  end
end
