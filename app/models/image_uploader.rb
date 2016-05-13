require "image_processing/mini_magick"

class ImageUploader < Shrine
  include ImageProcessing::MiniMagick

  plugin :activerecord
  plugin :determine_mime_type
  plugin :logging, logger: Rails.logger
  plugin :remove_attachment
  plugin :store_dimensions
  plugin :validation_helpers
  plugin :versions, names: [:original, :thumb, :small, :medium]

  Attacher.validate do
    validate_max_size 3.megabytes, message: 'is too large (max is 3 MB)'
    validate_mime_type_inclusion ['image/jpg', 'image/jpeg', 'image/png', 'image/gif']
  end

  def process(io, context)
    case context[:phase]
    when :store
      medium = resize_to_limit!(io.download, 800, 600)
      small = resize_to_limit!(io.download, 500, 500)
      thumb = resize_to_limit!(io.download, 100, 100)
      { original: io, medium: medium, small: small, thumb: thumb }
    end
  end
end