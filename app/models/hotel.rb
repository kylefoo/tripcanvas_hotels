class Hotel < ActiveRecord::Base
  belongs_to :provider

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
