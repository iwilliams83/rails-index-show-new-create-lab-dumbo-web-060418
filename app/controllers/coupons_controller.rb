class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
    render :index
  end

  # def view
  #   render :index
  # end

  def new
    render :new
  end

  def show
    @coupon = Coupon.find(params[:id])
    render :show
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(@coupon)
  end
end
