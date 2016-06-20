class ImagesController < ApplicationController
  before_action :set_resource, only: [:create]
  before_action :set_image, only: [:destroy, :update]

  def index
    @images = @resource.images
  end

  def create
    image = @resource.images.create(image_params)
    redirect_to :back, notice: 'Photo uploaded'
    # render partial: "photo", locals: {image: image, idx: @resource.images.count}
  end

  def update
    @resource.update(image_params)
    redirect_to root_path
  end

  def destroy
    redirect_to :back, notice: 'Photo was successfully removed!' if @image.destroy
  end

  private
  
  def set_image
    @image = Image.find(params[:id])
  end

  def set_resource
    if params[:hotel_id]
      @resource = Hotel.find(params[:hotel_id])
    elsif params[:user_id]
      @resource = User.find(params[:user_id])
    end
  end

  def image_params
    params.require(:image).permit(:hotel_id, :image, :remove_image, :caption)
  end
end
