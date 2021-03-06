class City < ActiveRecord::Base
  belongs_to :country

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
