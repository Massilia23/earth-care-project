require "rqrcode"

class VouchersController < ApplicationController
# before_action :set_voucher only: %i[show]

  def new
    @voucher = Voucher.new
    @booking = Booking.find(params[:booking_id])
  end

  def show
    # Voucher.create(code: "123")
    @booking = Booking.find(params[:booking_id])
    @voucher = Voucher.find(params[:id])
    @voucher = Voucher.last
    @qrcode = @voucher.code
    @code = RQRCode::QRCode.new("http://127.0.0.1:3000")
    @svg = @code.as_svg(
      off_set: 0,
      color: "000",
      shape_rendering: "crispEdges",
      module_size: 8,
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
      # wallet
    else
      render :new
    end
  end

  # def completed?(booking)
  #   @voucher = Voucher.find(params[:id])
  #   booking.voucher = voucher
  #   if @booking.completed_mission?

  #   else
  #     render
  #   end
  # end

  private

  def voucher_params
    params.require(:voucher).permit(:total_points, :code, :svg, :mission_id)
  end
end
