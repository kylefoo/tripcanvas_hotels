class Country < ActiveRecord::Base
  has_many :cities
  has_many :hotels

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
end
