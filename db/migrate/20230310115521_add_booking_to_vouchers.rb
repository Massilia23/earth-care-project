class AddBookingToVouchers < ActiveRecord::Migration[7.0]
  def change
    add_reference :vouchers, :booking, null: false, foreign_key: true
  end
end
