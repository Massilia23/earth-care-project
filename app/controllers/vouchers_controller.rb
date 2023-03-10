class VouchersController < ApplicationController
# before_action :set_voucher only: %i[show]
  def def new
    @voucher = Voucher.new
  end

  def show
    @voucher = Voucher.find[params[:id]]
  end

  def completed?
    @booking.voucher = @voucher
    if @booking.completed_mission?
       @voucher = Voucher.new
    else
      render
    end
  end


  # private

  # def set_voucher
  # end
end
