class Image < ActiveRecord::Base
  include ImageUploader[:image]

  belongs_to :imageable, polymorphic: true
  # validates_presence_of :image_data

end
