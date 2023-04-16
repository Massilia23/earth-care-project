require "rqrcode"

class VouchersController < ApplicationController
  def new
    @voucher = Voucher.new
    @booking = Booking.find(params[:booking_id])
  end

  def show
    @booking = Booking.find(params[:booking_id])
    @voucher = Voucher.find(params[:id])
    @voucher = Voucher.last
    @qrcode = @voucher.code
    @code = RQRCode::QRCode.new("http://127.0.0.1:3000")
    @svg = @code.as_svg(
      off_set: 0,
      color: "000",
      shape_rendering: "crispEdges",
      module_size: 8
      # standalone: true,
      # use_path: true
    )
  end

  def create
    @voucher = Voucher.new(voucher_params)
    @voucher.user = current_user
    @booking = Booking.find(params[:booking_id])
    # @voucher.mission = Mission.find(params(@booking.mission))
    @voucher.booking = @booking
    @voucher.total_points = @voucher.booking.mission.reward
    if @voucher.save
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def voucher_params
    params.require(:voucher).permit(:total_points, :code, :svg, :mission_id)
  end
end
