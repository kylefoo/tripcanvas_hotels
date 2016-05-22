class Provider::AffiliatesController < ApplicationController
  before_action :set_hotel, only: [:create]
  before_action :set_image, only: [:destroy, :update]

  def index
    @affiliates = @hotel.affiliates
  end

  def create
    image = @hotel.affiliates.create(affiliate_params)
    redirect_to :back, notice: 'Affiliate created'
    # render partial: "photo", locals: {image: image, idx: @resource.images.count}
  end

  def update
    @hotel.update(affiliate_params)
    redirect_to root_path
  end

  def destroy
    redirect_to :back, notice: 'Affiliate was successfully removed!' if @affiliate.destroy
  end

  private
  
  def set_affiliate
    @affiliate = Affiliate.find(params[:id])
  end

  def set_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def affiliate_params
    params.require(:affiliate).permit(:affiliate_id, :affiliate_label, :code, :remove_affiliate)
  end
end
