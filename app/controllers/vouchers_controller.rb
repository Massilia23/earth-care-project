class VouchersController < ApplicationController
# before_action :set_voucher only: %i[show]

  def new
    @voucher = Voucher.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @voucher = Voucher.new(voucher_params)
    @voucher.user = current_user
    @booking = Booking.find(params[:booking_id])
    @voucher.booking = @booking
    @voucher.total_points = @voucher.booking.mission.reward
    if @voucher.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def completed?
    @booking.voucher = @voucher
    if @booking.completed_mission?
       @voucher = Voucher.new
    else
      render
    end
  end

  private

  def voucher_params
    params.require(:voucher).permit(:total_points, :user_id, :booking_id)
  end
end
