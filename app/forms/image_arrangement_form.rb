class ImageArrangementForm

  include ActiveModel::Model

  attr_reader :image

  delegate :attributes=, to: :image, prefix: true

  def initialize(params = {})
    @hotel = Hotel.find(params[:hotel_id])
    @image = @hotel.images
    @image_attributes = params[:image_attributes]
  end

  def save
    update_images
  end

  private

  def update_images
    @image_attributes.each do |k,v|
      @image.find(v[:id]).update(position: v[:position].to_i, caption: v[:caption])
    end
  end

end
