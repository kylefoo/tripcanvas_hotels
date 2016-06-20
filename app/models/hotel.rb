class Hotel < ActiveRecord::Base
  belongs_to :provider
  belongs_to :city
  has_many :affiliates
  has_many :images, -> { order(:position) }, as: :imageable
  accepts_nested_attributes_for :images, allow_destroy: true
  validates_presence_of :name, :city_id, :description, :address
  attr_accessor :article
  include AASM

  aasm do
    state :pending, initial: true
    state :approved
    state :declined
    
    event :approve, after: :approval_email do
      transitions from: [:pending, :declined], to: :approved
    end

    event :decline, after: :declination_email do
      transitions from: [:pending, :approved], to: :declined
    end
  end

  extend FriendlyId
  friendly_id :name, use: [:slugged, :finders]
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      :name,
      [:name, :city_id],
      [:name, :city_id, :id]
    ]
  end

  def approval_email
  end

  def declination_email
  end
end
