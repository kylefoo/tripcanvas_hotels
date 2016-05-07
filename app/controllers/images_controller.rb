class ImagesController < ApplicationController
  before_action :set_resource

  def index
    @images = @resource.images
  end

  def create
    image = @resource.images.create(image_params)
    # render partial: "photo", locals: {image: image, idx: @resource.images.count}
  end

  def update
    @resource.update(image_params)
    redirect_to root_path
  end

  private
  
  def set_resource
    if params[:hotel_id]
      @resource = Hotel.find(params[:hotel_id])
    elsif params[:user_id]
      @resource = User.find(params[:user_id])
    end
  end

  def image_params
    params.require(:image).permit(:hotel_id, :image, :remove_image)
  end
end
